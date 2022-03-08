within ;
package External

function f
  "add two reals"
  input Real a;
  input Real b;
  output Real c;
  external "FORTRAN 77" fortran_add(a, b, c) annotation (Library={"external"});
end f;

function strlen
  "return the length of a string"
  input String s;
  output Integer sz;
  external "C" sz = mystrlen(s) annotation (Include=
  "
  #include <string.h>
  int mystrlen(const char* s)
  {
    return strlen(s);
  }
  ");
end strlen;

function sendString
  "send string to Fortran"
  input String fileName;
  input Integer fileNameSize;
  output Integer returnValue;
  external "FORTRAN 77" fortran_send_string(fileName, fileNameSize, returnValue) annotation (Library={"external"});
end sendString;

model Test
  Real x(start = 1, fixed = true);
  Real y;
  parameter String fileName = "someFileName.does.not.matter";
initial equation
  sendString(fileName, strlen(fileName));
equation
  y = f(1, time);
  der(x) = x + y;
end Test;

end External;


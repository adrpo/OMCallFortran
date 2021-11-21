within ;
package External

function f
  "add two reals"
  input Real a;
  input Real b;
  output Real c;
  external"FORTRAN 77" fortran_add(a, b, c) annotation (Library={"external"});
end f;

model Test
  Real x(start = 1, fixed = true);
  Real y;
equation
  y = f(1, time);
  der(x) = x + y;
end Test;

end External;


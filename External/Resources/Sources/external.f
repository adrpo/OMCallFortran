

      SUBROUTINE FORTRAN_ADD( A, B, C )
*     .. Scalar Arguments ..
      DOUBLE PRECISION            A, B, C

      C = A + B

      RETURN
      END
      
      SUBROUTINE FORTRAN_SEND_STRING( FILENAME, SZ, RET )
*     .. Scalar Arguments ..
      INTEGER           SZ, RET, MX
      CHARACTER*1024    FILENAME
      MX = 1024
      
      IF (SZ .GT. MX) THEN
         print*, ' STRING SIZE: ', SZ, ' EXCEEDS MAXIMUM: ', MX
         RET = 0
         
         RETURN 
      END IF
      print *, 'FILENAME SIZE: ', SZ
      print *, 'FILENAME IS: ', FILENAME(1:SZ+1)

      RET = 1
      RETURN
      END


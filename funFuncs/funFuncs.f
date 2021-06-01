       PROGRAM FUNFUNCS
*******************************************************************************
*           in the Taylor Series apporoximation.
*******************************************************************************
       REAL X
       REAL F, FF
       CHARACTER*70 LINE
       LINE =
     + "***********************************************************"


c      Print sine and cosine output to user
      print*, LINE
      print*, "EQN: ", QUADRATIC(1.0, 0.6, 1.0, 5.0)
      print*, "DER: ", DERIV(1.0, 0.6, 1.0, 5.0)
      print*, "FACT: ", FACT(5.0)
      print*, LINE
      END

****
* DERIV = 2AX + B
***
      REAL FUNCTION DERIV(A,B,C,X)
        REAL A, B, C, X
        DERIV = 2.0*A*X + B
      RETURN
      END

****
* QUADRATIC = AX^2 + BX + C
***
      REAL FUNCTION QUADRATIC(A,B,C,X)
        REAL A, B, C, X
        QUADRATIC = A*X*X + B*X + C
      RETURN
      END

      REAL FUNCTION FACT(N)
        REAL N
        FACT = 1
        DO 10 I = 2, N
          FACT = FACT*I
   10    CONTINUE
      RETURN
      END


       PROGRAM TAYLORSERIES
*******************************************************************************
*       This program accepts input of a single scalar in degrees and computes
*         the sine and cosine of that degree measure.
*       The -1 row is the FORTRAN  built-in function values.
*       Each successive row is numbered by the number of terms included
*           in the Taylor Series apporoximation.
*******************************************************************************
       REAL X
       REAL F, FF
       CHARACTER*70 LINE
       LINE =
     + "***********************************************************"


c      Display purpose to user
       print*, LINE
       print*, "This program will compute the sine and cosine of"
       print*, "  a single deree measure."
       print*, LINE

c      Read in user input
       print*, "Enter a value in degrees: "
       read*, X

c      Convert X to Radians (cheating!)
       X = X * 3.1459 / 180.0

c      Print sine and cosine output to user
      print*, LINE
      write(*,'(A,4x,A,4x,A)'), " N", " SINFUN", " COSFUN"
      write(*,'(i3,4x,f6.4,4x,f6.4)') -1, SIN(X), COS(X)
      do 5 J = 0, 6
       write(*,'(i3,4x,f6.4,4x,f6.4)') J, SINFUN(X, J), COSFUN(X, J)
  5    Continue
      END

      FUNCTION FACT(N)
        REAL FACT, N
        FACT = 1
        DO 10 I = 2, N
          FACT = FACT*I
 10    CONTINUE
      RETURN
      END

      FUNCTION SINFUN(X, N)
        REAL SINFUN, NN
        INTEGER N

        DO 20 I = 0, N
          NN = 2*I + 1
          SINFUN = SINFUN + (-1)**I * X**(NN) / FACT(NN)
 20     CONTINUE
        RETURN
      END

      FUNCTION COSFUN(X, N)
        REAL COSFUN, NN
        INTEGER N

        DO 30 I = 0, N
          NN = 2*I
          COSFUN = COSFUN + (-1)**I * X**(NN) / FACT(NN)
 30     CONTINUE
        RETURN
      END

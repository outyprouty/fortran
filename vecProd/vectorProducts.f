       PROGRAM VECTORPROD
*******************************************************************************
*       This program accepts input of two 3-D Cartesian Vectors and returns
*         returns their inner product and cross product.
*******************************************************************************
       REAL AX, AY, AZ, BX, BY, BZ, THETA
       REAL PI, D2R
       REAL CX, CY, CZ
       REAL INNERPROD
       CHARACTER*70 LINE
       LINE =
     + "***********************************************************"

c      Display purpose to user
       print*, LINE
       print*, "This program will compute the vector products of"
       print*, "  two 3-D Vectors, A & B."
       print*, LINE

c      Read in user input
       print*, "Enter Vector A (e.g., 1.0,1.0,1.0 ): "
       read*, AX, AY, AZ
       print*, "Enter Vector B (e.g., 1.0,1.0,1.0 ): "
       read*, BX, BY, BZ
       print*, LINE

c      Perform calculations
       INNERPROD = AX*BX + AY*BY + AZ*BZ
       CX = AY*BZ - AZ*BY
       CY = AZ*BX - AX*BZ
       CZ = AX*BY - AY*BX

c      Print results to user
       print*, "Inner Product of A & B:"
       print*, INNERPROD
       print*, ""
       print*, "Cross Product of A & B:"
       print*,"(", CX, "," , CY, ",", CZ, ")"
       END

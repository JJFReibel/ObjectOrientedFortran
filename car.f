! MIT License

! Copyright (c) 2021 Jean-Jacques François Reibel

! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the "Software"), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:

! The above copyright notice and this permission notice shall be included in all
! copies or substantial portions of the Software.

! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
! SOFTWARE.

! Subroutines and functions were not introduced to Fortran until Fortran II, and array programming was not introduced until Fortran 90. Common file extension of Fortran 90 is .f90. Use Fortran 90 compiler to see in action. Original Fortran had no functions, subroutines, procedures, methods.... And so OOP in Fortran I is therefore essentially impossible, as only number types and mathematical operations are possible.

subroutine addWheels(myCar, wheels)
   implicit none
   integer, dimension( : ) :: myCar
   integer wheels
   myCar(1) = myCar(1) + wheels
end subroutine

subroutine addDoors(myCar, doors)
   implicit none
   integer, dimension( : ) :: myCar
   integer doors
   myCar(2) = myCar(2) + doors
end subroutine

subroutine addCylinders(myCar, cylinders)
   implicit none
   integer, dimension( : ) :: myCar
   integer cylinders
   myCar(3) = myCar(3) + cylinders
end subroutine

subroutine deleteWheels(myCar, wheels)
   implicit none
   integer, dimension( : ) :: myCar
   integer wheels
   myCar(1) = myCar(1) - wheels
end subroutine

subroutine deleteDoors(myCar, doors)
   implicit none
   integer, dimension( : ) :: myCar
   integer doors
   myCar(2) = myCar(2) - doors
end subroutine

subroutine deleteCylinders(myCar, cylinders)
   implicit none
   integer, dimension( : ) :: myCar
   integer cylinders
   myCar(3) = myCar(3) - cylinders
end subroutine

program hello
   integer, dimension(3) :: car = (/4, 4, 4/)
   integer wheels
   integer doors
   integer cylinders
   interface 
     subroutine addWheels(myCar, wheels)      
       integer, dimension( : ) :: myCar
       integer wheels
     end subroutine
   end interface
   interface 
     subroutine addDoors(myCar, doors)      
       integer, dimension( : ) :: myCar
       integer doors
     end subroutine
   end interface
   interface 
     subroutine addCylinders(myCar, cylinders)      
       integer, dimension( : ) :: myCar
       integer cylinders
     end subroutine
   end interface
   interface 
     subroutine deleteWheels(myCar, wheels)      
       integer, dimension( : ) :: myCar
       integer wheels
     end subroutine
   end interface
   interface 
     subroutine deleteDoors(myCar, doors)      
       integer, dimension( : ) :: myCar
       integer doors
     end subroutine
   end interface
   interface 
     subroutine deleteCylinders(myCar, cylinders)      
       integer, dimension( : ) :: myCar
       integer cylinders
     end subroutine
   end interface
   Print *, "Created car."
   Print *, "Wheel check: ", car(1)
   Print *, "Door check: ", car(2)
   Print *, "Cylinder check: ", car(3)
   Print *
   Print *, "Adding wheel directly to car object."
   car(1) = car(1) + 1
   Print *, "Wheel check: ", car(1)
   Print *, "Door check: ", car(2)
   Print *, "Cylinder check: ", car(3)
   Print *
   Print *, "Removing wheel using object method."
   call deleteWheels(car, 1)
   Print *, "Wheel check: ", car(1)
   Print *, "Door check: ", car(2)
   Print *, "Cylinder check: ", car(3)
   Print *
end program Hello
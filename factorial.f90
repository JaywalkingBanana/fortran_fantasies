module factorial_module
  implicit none

contains
  recursive integer function factorial(i) &
    result(answer)
    implicit none
    integer, intent (in) :: i
    
    if(i == 0) then
      answer = 1
    else
      answer = i * factorial(i - 1)
    end if
  end function factorial
end module factorial_module

program get_factorial
  use factorial_module
  implicit none
  integer :: i,f
  print *,'Type in the number, integer only'
  read *, i
  f = factorial(i)
  print *, 'Factorial of ', i, ' is: ', f
end program get_factorial     

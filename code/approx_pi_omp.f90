program approx_pi

	integer :: n = 1000000000, i
	real(kind = 8) :: dx, pi_sum, x, pi

	dx = 1.d0 / n
	pi_sum = 0.d0
	!$omp parallel do reduction(+:pi_sum) private(x)
	do i = 1, n
		x = dx * i
		pi_sum = pi_sum + 1.d0 / (1.d0 + x**2)
	end do

	pi = 4.d0 * dx * pi_sum
	print *, "pi =", pi

end program approx_pi

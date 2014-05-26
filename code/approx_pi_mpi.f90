program approx_pi

	use mpi
	integer :: n, i, proc_num
	real(kind = 8) :: dx, pi_sum, x, pi


	call mpi_init(ierr)
	call mpi_comm_rank(mpi_comm_world, proc_num, ierr)

	if (proc_num == 0) n = 1000

	! broadcast to all processes
	call mpi_bcast(n, 1, mpi_integer, 0, mpi_comm_world, ierr)

	! remains to finish ...
	! ...

end program approx_pi

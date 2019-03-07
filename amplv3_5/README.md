To run the code, you need to first have AMPL with CPLEX solver installed.

You can change the solver using the `solver` option in `schedule.run`.

If you have downloaded AMPL as binary, you can use the code by adding the AMPL folder to your path and then running as `./ampl schedule.run`

Optionally, if you have built AMPL from source, you need to change the `solver` option from
`'./cplex'` to `cplex` and then run `ampl schedule.run`.

Output will be generated on terminal.


The values for the constraints can be modified from `schedule.dat`

The problem and constraints are defined in `schedule.mod`.

Output has been generated and dumped in `output.txt` for the problem.

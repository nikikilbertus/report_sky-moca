# Sky-MoCa - Report

These are the reports for a research project in Computational Physics and Magnetism about

*Skyrmion - Monte Carlo: Simulated annealing with the Metropolis algorithm for a 3D spin lattice*

The code can be found [here](https://github.com/nikikilbertus/Sky-MoCa).

## Computational Physics Part

We give a general introduction to Monte Carlo methods with a special focus on
simulated annealing and the Metropolis algorithm. This report is conceived as an
ab-initio guide to implement and properly analyse simulated annealing by the
example of a three-dimensional lattice spin model. This system can be used to
simulate different phases of chiral magnets such as MnSi at finite temperature
in an external magnetic field. A thorough theoretical understanding of the
requirements, applicability and errors is developed and illustrated by reference
to the specific example. All code is publicly available for reproducability.
Common pitfalls are identified and we provide clear and practical guidelines on
how to avoid them.

## Magnetism Part

We use the three-dimensional spin lattice Monte Carlo code Sky-MoCa to
investigate the skyrmion phase in chiral magnets non-perturbatively. We derive
the appropriate lattice Hamiltonian and discuss the relevant interactions as
well as their consequences. The thermodynamic phases and transitions between
them can be analyzed by means of Bragg intensity patterns and thermodynamic
properties such as the specific heat and the susceptibility. We specifically
demonstrate that the model does indeed exhibit the helical, conical and skyrmion
phase for appropriate choices of the temperature and the external field.
Subsequently we study the temperature driven transition from the unordered
random phase to the helical phase. Moreover, we cool the system into the
skyrmion phase and simulate both transitions driven by a change of the magnetic
field. First, we decrease the field until the skyrmion tubes start to touch and
gradually merge eventually resulting in the helical phase. Secondly, we increase
the magnetic field until the skyrmion tubes simply vanish and the system
transitions into the fully aligned phase. All observed phenomena qualitatively
match experimental data.

## Compilation

To compile the `tex` files, navigate either to the directory `report_magnetism` or `report_computational` and simply type `make`.

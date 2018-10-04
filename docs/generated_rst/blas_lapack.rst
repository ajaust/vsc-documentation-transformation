Scope
=====

On modern CPUs the actual performance of a program depends very much on
making optimal use of the caches.

Many standard mathematical algorithms have been coded in standard
libraries, and several vendors and research groups build optimised
versions of those libraries for certain computers. They are key to
extracting optimal performance from modern processors. Don't think you
can write a better dense matrix-matrix multiplication routine or dense
matrix solver than the specialists (unless you're a real specialist
yourself)!

Many codes use dense linear algebra routines. Hence it is no suprise
that in this field, collaboration lead to the definition of a lot of
standard functions and many groups worked hard to build optimal
implementations:

-  BLAS (Basic Linear Algebra Subroutines) is a library of
   vector-vector, matrix-vector and matrix-matrix operations.
-  Lapack, a library of dense and banded matrix linear algebra routines
   such as solving linear systems and the eigenvalue- and singular value
   decomposition. Lapack95 defines Fortran95 interfaces for all
   routines.
-  ScaLapack is a distributed memory parallel library offering some
   functionality similar to Lapack.

Standard Fortran implementations do exist, so you can always recompile
code using these libraries on systems on which the libraries are not
available.

Blas and Lapack at the VSC
==========================

We provide BLAS and LAPACK routines through the toolchains. Hence the
instructions for linking with the libraries are given on the toolchains
page.

-  The `intel toolchain </cluster-doc/development/toolchain-intel>`__
   provides the BLAS, LAPACK and ScaLAPACK interfaces through the Intel
   Math Kernel Library (MKL)
-  The `foss toolchain </cluster-doc/development/toolchain-foss>`__
   provides open source implementations:

   -  The OpenBLAS BLAS library
   -  The standard LAPACK implementation
   -  The standard ScaLAPACK implementation

Links
=====

-  The Lapack, Lapack95 and ScaLAPACK manuals are published by SIAM, but
   there are online HTML versions available on Netlib (the repository
   that also contains the standard Fortran implementations):

   -  `Lapack Users' Guide <http://www.netlib.org/lapack/lug/>`__ on the
      `Netlib BLAS repository <http://www.netlib.org/blas/>`__
   -  `Lapack95 Users' Guide <http://www.netlib.org/lapack95/lug95/>`__
      on the `Netlib LAPACK
      repository <http://www.netlib.org/lapack/>`__
   -  `ScaLAPACK Users' Guide <http://netlib.org/scalapack/slug/>`__ on
      the `Netlib ScaLAPACK
      repository <http://www.netlib.org/scalapack/>`__

-  Documentation about specific implementations is available on the
   `Toolchains pages </cluster-doc/development/toolchains>`__

   -  `intel
      toolchain </cluster-doc/development/toolchain-intel#intelInfo>`__
   -  `foss
      toolchain </cluster-doc/development/toolchain-foss#fossInfo>`__

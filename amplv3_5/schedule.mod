param n;
param m;

# Sets
set I := 1..n;
set K := 1..m;

param p{i in I, k in K}, >=0;

param M := sum{i in I, k in K}(p[i,k]);

# Variables

var t{i in I, k in K}, >=0;
var y{i in I, j in I, k in K}, binary;
var eta, >=0;

# Objective
minimize makespan: eta;

# Constraints

subject to eta_max{i in I}:
	eta >= t[i,m] + p[i,m];

subject to disjunction_1{i in I, j in I, k in K: i<j}:
	t[i,k] + p[i,k] <= t[j,k] + M*(1-y[i,j,k]);

subject to disjunction_2{i in I, j in I, k in K: i<j}:
	t[j,k] + p[j,k] <= t[i,k] + M*y[i,j,k];

subject to sequence{i in I, k in (K diff {m})}:
	t[i,k] + p[i,k] <= t[i,k+1];

param n;
param m;

# Sets
set I := 1..n;
set K := 1..m;

param c{k in K, i in I}, >=0;
param d{k in K} >=0;
param s{i in I} >=0;

# Variables

var x{k in K, i in I} integer >=0;

# Objective
minimize Z: sum{k in K, i in I} ((floor(x[k, i] / 2) + x[k, i] mod 2) * c[k, i] * 30);

# Constraints

subject to supply_limit{i in I}:
  sum {k in K} x[k, i] >= s[i];

subject to supply_finish{i in I}:
  sum {k in K} x[k, i] <= s[i];

subject to demand_limit{k in K}:
  sum {i in I} x[k, i] <= d[k];

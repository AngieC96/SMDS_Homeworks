data{
  int<lower=0> N;
  int s;
  real a;
  real b;
}
parameters{
  real<lower=0,upper=1> p;
}
model{
  target += binomial_lpmf(s | N, p);
  target += beta_lpdf(p | a, b);
}

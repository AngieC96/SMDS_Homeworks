data{
  int N;
  real y[N];
  real a;
  real b;
}
parameters{
  real p;
}
model{
  target+=normal_lpdf(y | a, b);
  target += beta_lpdf(p | a, b);
}

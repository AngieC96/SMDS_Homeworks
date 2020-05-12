data{
  int N;   //number of observations
  real y[N]; //observations
  real a;
  real b;
}
parameters{ //parameters unknown to estimate
  real theta; 
  real<lower=0> sigma;
}
model{
  target+=normal_lpdf(y|theta, sigma); //likelihood
  target+=uniform_lpdf(theta|a, b ); // prior for theta
  target+=uniform_lpdf(sigma| 0.1, 10); // prior for sigma
}

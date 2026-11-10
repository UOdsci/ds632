// saved as baseball.stan
data {
    int N;   // number of players
    array[N] int hits;
    array[N] int at_bats;
    int npos; // number of positions
    array[N] int position;
}
parameters {
    array[N] real<lower=0, upper=1> theta;
    array[npos] real<lower=0, upper=1> mu;
    array[npos] real<lower=0> kappa;
}
model {
    real alpha;
    real beta;
    hits ~ binomial(at_bats, theta);
    for (i in 1:N) {
        alpha = mu[position[i]] * kappa[position[i]];
        beta = (1 - mu[position[i]]) * kappa[position[i]];
        theta[i] ~ beta(alpha, beta);
    }
    mu ~ beta(1,1);
    kappa ~ gamma(0.1,0.1);
}

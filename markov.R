#Number of iterations
N=100
#Path variable
X=rep(0,N+1)
#States
S=1:4
#Initialization
X[1]=1
#Transition Matrix
A=matrix(nrow=length(S), ncol=length(S), c(0.1,0.1,0.1,0.3,
                                           0.1,0.3,0.1,0.1,
                                           0.1,0.6,0.8,0.1,
                                           0.7,0.0,0.0,0.5))

for (i in 1:N){
  probs=A[X[i],]
  u=runif(1)
  cs=cumsum(probs)
  X[i+1]=which(u<=cs)[1]
}

print(X)
plot(X, type ="l",xlab ="Iteration", ylab = "State", main ="Markov chain path")

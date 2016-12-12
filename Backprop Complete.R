n.inputs <- 24
n.hidden <- 10
n.outputs <- 24
learning.rate <- 0.2
rate.REM.decay.all <- 0.855
REM.enhance.amount <- 1.058

training.words <- list(
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0)),
  list(input=runif(n.inputs, 0, 1), output=c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
) 

words.tested <- sample(training.words, 20) 

weights.to.hidden <- matrix(rnorm(n.inputs*n.hidden, mean=0, sd=1), nrow=n.inputs, ncol=n.hidden) 
weights.to.output <- matrix(rnorm(n.hidden*n.outputs, mean=0, sd=1), nrow=n.hidden, ncol=n.outputs)

sigmoid.activation <- function(x){
  return(1 / (1+exp(-x)))
}

forward.pass <- function(input){
  hidden.layer <- numeric(n.hidden)
  for(i in 1:n.hidden){
    hidden.layer[i] <- sigmoid.activation(sum(input*weights.to.hidden[, i]))
  }
  output.layer <- numeric(n.outputs) 
  for(i in 1:n.outputs){
    output.layer[i] <- sigmoid.activation(sum(hidden.layer*weights.to.output[, i]))
  }
  return(list(hidden=hidden.layer, output=output.layer))
}

backprop <- function(input, target){
  
  delta.weights.to.hidden <- weights.to.hidden
  delta.weights.to.output <- weights.to.output
  
  activations <- forward.pass(input)
  output <- activations$output
  hidden <- activations$hidden
  
  output.error <- target - output
  output.slope <- output*(1-output)
  output.weighted.error <- output.slope*output.error
  for(o in 1:n.outputs){
    delta.weights.to.output[,o] <- learning.rate*output.weighted.error[o]*hidden
  }
  
  hidden.error <- numeric(n.hidden)
  for(h in 1:n.hidden){
    hidden.error[h] <- sum(delta.weights.to.output[h,] * output.weighted.error)
  }
  hidden.slope <- hidden*(1-hidden)
  hidden.weighted.error <- hidden.slope*hidden.error
  for(h in 1:n.hidden){
    delta.weights.to.hidden[,h] <- learning.rate*hidden.weighted.error[h]*input
  }
  
  weights.to.hidden <<- weights.to.hidden + delta.weights.to.hidden
  weights.to.output <<- weights.to.output + delta.weights.to.output
  
}

test.word <- function(input, target){
  rmse.output <- sqrt(mean(target - forward.pass(input)$output)^2)
  return(rmse.output)
} 

REM.decay.all <- function(){
  weights.to.hidden <<- weights.to.hidden * rate.REM.decay.all
  weights.to.output <<- weights.to.output * rate.REM.decay.all
}

REM.enhance <- function(){
  weights.to.hidden <<- weights.to.hidden * REM.enhance.amount
  weights.to.output <<- weights.to.output * REM.enhance.amount
} 

REM.contrast <- function(){
  weights.to.hidden <<- weights.to.hidden + (weights.to.hidden / sum(abs(weights.to.hidden)))
  weights.to.output <<- weights.to.output + (weights.to.output / sum(abs(weights.to.output)))
}

classification.correct <- function(input, target){
  if(which.max(forward.pass(input)$output) == which.max(target)){
    return(T)
  }
  else{
    return(F)
  }
}

epoch <- function(){
  for(t in 1:length(training.words)){
    backprop(training.words[[t]]$input, training.words[[t]]$output)
  }
 
  error <- 0
  classification.acc <- 0
  
  for(t in 1:length(words.tested)){
    backprop(words.tested[[t]]$input, words.tested[[t]]$output)
    # uncomment any of the lines below to run different versions of the model
    # REM.decay.all()
    # REM.enhance()
    # REM.contrast()
    error <- error + test.word(words.tested[[t]]$input, words.tested[[t]]$output)
    classification.acc <- classification.acc + classification.correct(words.tested[[t]]$input, words.tested[[t]]$output)
  }
  classification.acc <- classification.acc / length(words.tested)
  return(list(error=error, classification.accuracy = classification.acc))
} 


batch <- function(epochs){
  errors <- numeric(epochs)
  classifications <- numeric(epochs)
  pb <- txtProgressBar(min=0, max=epochs, style=3)
  for(i in 1:epochs){
    result <- epoch()
    errors[i] <- result$error
    classifications[i] <- result$classification.accuracy
    setTxtProgressBar(pb, i)
  }
  return(data.frame(epoch=1:epochs, error=errors, accuracy=classifications))
}

result <- batch(500)
plot(result$accuracy)
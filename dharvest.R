
# Original function

# dharvest= function(Time, P, parms) {
#   
#   dP = parms$r * P * (1- P/parms$K) - parms$harv*P
#   return(list(dP))
# }


# Modified function
# Create a new derivative function based on dharvest.R, but modify so that harvest is now a fixed value rather that a proportion of forest carbon

dharvest_fixed= function(Time, P, parms) {

  dP = parms$r * P * (1- P/parms$K) - parms$harv #Just removed the 'P' so its not proportional to the population
  return(list(dP))
}
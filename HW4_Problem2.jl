import Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()
using JuMP
using HiGHS
using DataFrames
using Plots
using Measures
using CSV
using MarkdownTables

farm_model = Model(HiGHS.Optimizer) # initialize model object
@variable(farm_model, S[1:3] >= 0)
@variable(farm_model,W[1:3] >= 0 )
@variable(farm_model,C[1:3] >= 0 )
@objective(farm_model, Max, S[1]*2900*0.36 - S[1]*(350) +
                                S[2]*3800*0.36 -S[2]*(70+350) +
                                S[3]*4400*0.36 - S[3]*(140+350) +

                                W[1]*3500*0.27 - W[1]*280 +
                                W[2]*4100*0.27 - W[2]*(70+280) +
                                W[3]*4200*0.27 - W[3]*(140+280)+

                                C[1]*5900*0.22 - C[1]*390+
                                C[2]*6700*0.22 - C[2]*(70+390)+
                                C[3]*7900*0.22 - C[3]*(140+390)
)

@constraint(farm_model, soy_fert, (S[2]+2*S[3])<=0.8*(S[1]+S[2]+S[3]))
@constraint(farm_model, soy_acre, (S[1]*2900+S[2]*3800 +S[3]*4400) <= 250000 )
@constraint(farm_model, wheat_fert, (W[2]+2*W[3])<=0.7*(W[1]+W[2]+W[3]))
@constraint(farm_model, wheat_acre, (W[1]*3500+W[2]*4100 +W[3]*4200) <= 250000 )
@constraint(farm_model, corn_fert, (C[2]+2*C[3])<=0.6(C[1]+C[2]+C[3]) )
@constraint(farm_model, corn_acre, (C[1]*5900+C[2]*6700 +C[3]*7900) <= 250000 )
@constraint(farm_model, acres, sum(S)+sum(W)+sum(C)<=130)

print(farm_model) # this outputs a nicely formatted summary of the model so you can check your specification
optimize!(farm_model)
@show value.(S);
@show value.(W);
@show value.(C);
@show shadow_price(acres);


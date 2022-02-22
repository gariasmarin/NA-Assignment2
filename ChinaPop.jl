using FundamentalsNumericalComputation

year = 1980:10:2010 
pop = [984.736, 1148.364, 1263.638, 1330.141];
t = year .- 1980
y = pop;
V = [ t[i]^j for i=1:4, j=0:3 ]
c = V \ y
p = Polynomial(c)    # construct a polynomial
p(2005-1980)   # apply the 1980 time shift

sscatter(t,y, label="actual", legend=:topleft,
xlabel="years since 1980", ylabel="population (millions)", title="Population of China")
tt = LinRange(-10,50,500)    
plot!(tt,p.(tt), label="interpolant")
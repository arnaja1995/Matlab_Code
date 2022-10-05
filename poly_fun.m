% assignment on "Function handle without using loop" by Arnaja Mitra.
function ph = poly_fun(p)
 function polynomial = poly(x)
  polynomial = sum(p.* x.^(0:length(p)-1));% No loop 
 end
ph=@poly; % Function hndle with . 
end
function a=sigmoid_der(b)
c=1./(1+exp(-b));
a=c.*(1-c);
end


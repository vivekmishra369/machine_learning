function x=var(a,b)
for i=1:length(b)
    c=(b(1,i)-a)^2;
end


x=(1/length(b))*c;

end

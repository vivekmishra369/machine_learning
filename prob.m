function p=prob(a,b)
p=1;
c=zeros(1,length(a));
for i=1:length(b)
    c(1,i)= (0.3989*(1/sqrt(b(2,i))))*exp(-((a(1,i)-b(1,i))^2)/2*b(2,i));
end
for j=1:length(a)
    p=p*c(1,j);
end
end

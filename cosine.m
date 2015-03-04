function x=cosine(a,b)

c=sqrt(sum(a.^2));
d=sqrt(sum(b.^2));
x=dot(a,b)/(c*d);

end

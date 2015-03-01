%%logistic regression
% regularization pending
fprintf('welcome to logistic regression');
fprintf('\n');
data=input(' mention the name of data set in single quotes \n');
d=load(data);
disp(d);
s=size(d);
l=s(1,1);
b=s(1,2);
fprintf('number of data points = %i',s(1,1));
fprintf('\n');
fprintf('the number of features is = %i',s(1,2)-1);
X=d(:,1:s(1,2)-1);
X=normalize(X);
y=d(:,s(1,2));
%disp(X);
theta=rand(s(1,2),1);
temp=zeros(s(1,2),1);
fprintf('\n');
alpha=input('please define learning rate');
n=input('define number of iterations');
fprintf('\n');
fprintf('running logistic regression...');
x=[ones(s(1,1),1),X];
for i=1:n
    
    
    for j=1:s(1,2)
       % fprintf('%i',theta(j,1));
        temp(j)=(theta(j)-(alpha*(1/l)*(regderivative(x,y,theta,j))))
        theta(j)=temp(j);
        
        
    end
   
end
T=theta;

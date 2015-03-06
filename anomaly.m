% anomaly detection
fprintf('welcome to the anomaly detection module\n');
fprintf('the dataset that you will use to train the algorithm');
fprintf(' must only have non anomalous examples \n');
da=input('please mention the dataset file in single quotes: \n');
x=load(da);
s=size(x);
l=s(1,1);
b=s(1,2);
fprintf('your dataset has %i healthy examples with %i features \n',l,b);
fprintf('training...\n');
mus=zeros(2,b);

for i=1:l
    for j=1:b
        mus(1,j)=sum(x(j,:))/l;
        mus(2,j)=(1/l)*var(sum(x(j,:))/l,x(j,:));
    end
        






end
fprintf('training complete.\n');
inp=input('please enter new datapoint for checking if it is anomalous :\n');
eps=input('please enter normalized threashold probability :\n');
p=prob(inp,mus);

if p<eps
    fprintf('this dat-point is an anomaly\n');
end

if p>eps
    fprintf('this data-point is healthy\n');
end








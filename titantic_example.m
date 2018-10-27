f = fopen('titanic.csv', 'rt');
cols = textscan(f, '%f %f %s %s %f %f %f %f', ...
      'Delimiter',',', 'HeaderLines',1);
fclose(f);

% label (survived)
y=cols{1};

% predictors/features (class, age, fare)
x=[cols{2} cols{5} cols{8}];

% add intercept
x=[x ones(size(y))];

% logistic function
sigmd=@(x)(exp(x)./(1+exp(x)));

% initial guess for a
a=zeros(4,1);

p=sigmd(x*a);

% loop over data
for i=1:size(x,1)
    a=a+...; % need to fill in grad      
end






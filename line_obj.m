%line������÷�

hf=figure;

h1=plot([0:10]);
%ʾ��line��������
set(h1,'color','r','marker','*');
get(h1)

%��ͼsin(x)
h11=ezplot('sin(x)');
x=get(h11,'XData');
y=get(h11,'YData');

figure
plot(x,y)
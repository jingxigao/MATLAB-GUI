%line对象的用法

hf=figure;

h1=plot([0:10]);
%示意line对象属性
set(h1,'color','r','marker','*');
get(h1)

%绘图sin(x)
h11=ezplot('sin(x)');
x=get(h11,'XData');
y=get(h11,'YData');

figure
plot(x,y)
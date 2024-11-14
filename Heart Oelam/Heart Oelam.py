import math
from turtle import *

def hearta(k):
    return 15 * math.sin(k)**3

def heartb(k):
    return 12 * math.cos(k) - 5 * math.cos(2 * k) - 2 * math.cos(3 * k) - math.cos(4 * k)

speed(50)  
bgcolor("pink")
color("red")

begin_fill()  

k = 0
while k < 2 * math.pi:
    x = hearta(k) * 20
    y = heartb(k) * 20
    goto(x, y)
    k += 0.01  

end_fill()  


penup()
goto(0, -20)  
pendown()
color("white")
write("semangat yaaa uts nya", align="center", font=("Arial", 16, "bold"))


penup()
goto(0, -40)  
pendown()
write("love youuu", align="center", font=("Arial", 16, "bold"))

penup()
goto(0, -60)  
pendown()
write("from oelam hehe", align="center", font=("Arial", 12, "bold"))

done()  

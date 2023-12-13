def W(t,h,w):
    W=0.5*t**2-0.2*h+0.1*w-15
    if W>=300:
        print("Sunny")
    elif W>=200 and W<300:
        print("Cloudy")
    elif W>=100 and W<200:
        print("Rainy")
    elif W<100:
        print("Stormy")

with open('input.txt','r') as f:
  lines=f.readlines()
values=[int(line.strip()) for line in lines]

t,h,w=values[0],values[1],values[2]
for i in range(0,len(values),3):
  t,h,w=values[i],values[i+1],values[i+2]
  W(t,h,w)

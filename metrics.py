import psutil
import time

while(True):
    print('The CPU usage is: ', psutil.cpu_percent(4))
    print('RAM memory % used:', psutil.virtual_memory()[2])
    print("*"*30)
    time.sleep(30)

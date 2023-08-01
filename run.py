import os
import shutil
import time

def main():
    print('---------------')
    print('Enter the number of file operations (1 - 100)')
    print('Enter "0" to exit')

    num = numInput()
    
    activity()
    print('')
    print('List of files to encrypt:')
    time.sleep(2)
    scanf()   

    print('')
    print('Encrypt operation start!')
    time.sleep(2)
    encrypt(num)

    print('')
    print('Complete!')
    print('')
    time.sleep(2)
    restore(num)

    main()

# Input number of files
def numInput():
    i = int(input('>> '))

    if i > 100 or i < 0:
        print('Wrong number!')
        numInput()
    elif i == 0:
        exit()
    return i

# Suspicious activity scripts
def activity():
    rn = 1
    while rn <= 3:
        os.system('disuac.bat')
        os.system('fwrules.bat')
        os.system('fwdis.bat')
        os.system('winredis.bat')
        os.system('enrdpreg.bat')
        os.system('clevlog.bat')
        rn = rn + 1

# Scan folder
def scanf():
    tree = os.walk('c:\Windows\system32')
    tree = os.walk('01')
    print('---------------')
    for i in tree:
        print(i)
    print('---------------')

# Encrypting process
def encrypt(num):
    # Copy files
    cp = 1
    while cp <= num:
        shutil.copy2(f'01/file{cp}.txt', f'01/file{cp}.copy')
        cp = cp + 1

    time.sleep(2)
    # Rename files
    rm = 1
    while rm <= num:
        os.rename(f'01/file{rm}.copy', f'01/file{rm}.encrypt')
        rm = rm + 1

    time.sleep(2)
    # Remove files
    dl = 1
    while dl <= num:
        os.remove(f'01/file{dl}.txt')
        dl = dl + 1

# Restore files
def restore(num):
    bk = num
    while bk > 0:
        os.rename(f'01/file{bk}.encrypt', f'01/file{bk}.txt')
        bk = bk - 1

if __name__ == "__main__":
    main()

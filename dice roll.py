import random

def roll(player):
    list = random.randint(1,6)
    print(f"player {player}you have got {list} number")
while True:
    ch=input("do you want to play game YES/NO ")
    if ch in "yes":
        nop=int(input("select the number player" ))
        for player in range(1,nop+1):
            pc=int(input(f"do you want to roll the dices{player}\n enter 1 to roll and 0 to exit"))

            if pc ==1:
                roll(player)

            elif pc ==0:
                break
            else:
                print("enter valid choice")



    elif ch in "no":
        break
    else:
        print("invalid choice")




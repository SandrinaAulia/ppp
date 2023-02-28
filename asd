import os
import random
os.system('cls')

def mergeSort(data):
    if len(data) > 1:
        mid = len(data) // 2
        left_data = data[:mid]
        right_data = data[mid:]


        mergeSort(left_data)
        mergeSort(right_data)

        """
        i = 0 #indeks untuk array kiri 
        j = 0 #indeks untuk array kanan
        k = 0 #indeks untuk penggabungnya
        """
        
         
        i = j = k=0
        

        while i < len(left_data) and j < len (right_data):
            if left_data[i] < right_data[j]:
                data[k]= left_data[i]
                i += 1
                k += 1

            else:
                data[k] = right_data[j]
                j += 1
                k += 1

        while i < len(left_data):
            data[k] = left_data[i]
            i += 1
            k += 1

        
        while j < len(right_data):
            data[k] = right_data[j]
            j += 1
            k += 1

        
def quicksort(arr):
    if len(arr )<= 1:
        return arr
    else:
        pivot = arr[0]

        left = [ x for x in arr [1:] if x <= pivot]
        right = [ x for x in arr [1:] if x >= pivot]

        return quicksort(left)+ [pivot] + quicksort(right) 



def shell(list):
    n = len (list)
    gap = n // 2

    while gap > 0:
        for i in range (gap, n):
            temp = list[i]
            j=i
            while j >= gap and list [j-gap] > temp:
                list[j] = list[j-gap]
                j -= gap

            list [j] = temp
        gap //= 2

    return list


random.seed(1)
 
print('data sebelum di sorting:' ,[random.randint(1, 100) for i in range(13)])


data = [5, 19, 3, 9, 4, 16, 15, 12, 7, 10, 11, 1, 14]

print(50*"=")
result = quicksort(data)
print(f"Quick Sort :  {result}")

mergeSort(data)
print(50*"=")
print (f"Merge Sort :  {data}")

print(50*"=")
print ("Shell Sort : ", shell([5, 19, 3, 9, 4, 16, 15, 12, 7, 10, 11, 1, 14]))
print(50*"=")

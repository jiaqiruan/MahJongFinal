
//ideas for tracking listening winning hand
//first we have an array of length 30
//each index represent the uid of a card
//number store in arr[index] represent the number of that card currently hold
//when checking for listening winning hand
//if there is no adjacent card hold (self_index-1, self_index, self_index+1), then we skip it
//otherwise, check for listening winning hand




int[] midList = new int[30] {  0,      
    0,0,0,0,0,0,0,0,0,            //        1万～9万的个数     
    0,      
    0,0,0,0,0,0,0,0,0,          //         1筒～9筒的个数     
    0,      
    0,0,0,0,0,0,0,0,0          //        1条～9条的个数                                        
    };

public bool mayHu(int[] pai){  
    if(remainPai(pai)) {  
        jiangPai = 0;  
        return true;  
    }  
    for (int i = 1; i < 30; i++){  
        if (pai[i] <= 0 || (i > playerService[0].player.queZhang && i < playerService[0].player.queZhang + 10)|| (i%10==0)){ 
            continue;  
        }  
        if (pai[i] == 4){  
            pai[i] = 0;  
            if (mayHu(pai))  {  
                return true;  
            }  
            pai[i] = 4;  
        }  
        if (pai[i] >= 3) {  
            pai[i] -= 3;  
            if (mayHu(pai)){  
                return true;  
            }  
            pai[i] += 3;  
        }  
        if (jiangPai == 0 && pai[i] >= 2){  
            jiangPai = 1;  
            pai[i] -= 2;  
            if (mayHu(pai)){  
                return true;  
            }  
            jiangPai = 0;  
            pai[i] += 2;  
        }  
        if (i % 10 != 8 && i % 10 != 9 && pai[i + 1] > 0 && pai[i + 2] > 0){  
            pai[i]--;  
            pai[i + 1]--;  
            pai[i + 2]--;  
            if (mayHu(pai)){  
                return true;  
            }  
            pai[i]++;  
            pai[i + 1]++;  
            pai[i + 2]++;  
        }  
    }  
    return false;  
}  
public bool remainPai(int[] pai){  
    int sum = 0;  
    for (int i = 0; i < pai.Length; i++){  
        sum += pai[i];  
    }  
    if (sum == 0){  
        return true;  
    }  
    return false;  
 }
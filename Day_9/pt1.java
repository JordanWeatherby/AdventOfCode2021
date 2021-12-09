import java.io.BufferedReader;
import java.io.FileReader;

import java.util.*;

class Pt1 {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(new BufferedReader(new FileReader("inputnums.txt")));
      int rows = 102;
      int columns = 102;
      int [][] nums = new int[rows][columns];
      while(sc.hasNextLine()) {
         for (int i=0; i<nums.length; i++) {
            String[] line = sc.nextLine().trim().split("");
            for (int j=0; j<line.length; j++) {
               nums[i][j] = Integer.parseInt(line[j]);
            }
         }
      }
      System.out.println(Arrays.deepToString(nums));
        List<Integer> riskLevels = new ArrayList<Integer>();
        for (int i=1; i<nums.length-1; i++) {
            for (int j=1; j<nums[0].length-1; j++) {
                int height = nums[i][j];
                // System.out.println("------");
                // System.out.println(height);
                // System.out.println(nums[i-1][j-1]);
                // System.out.println(nums[i-1][j]);
                // System.out.println(nums[i-1][j+1]);
                // System.out.println(nums[i][j-1]);
                // System.out.println(nums[i][j+1]);
                // System.out.println(nums[i+1][j-1]);
                // System.out.println(nums[i+1][j]);
                // System.out.println(nums[i+1][j+1]);
                if(height >= nums[i-1][j-1]){
                    continue;
                } else if (height >= nums[i-1][j]) {
                    continue;
                } else if (height >= nums[i-1][j+1]) {
                    continue;
                } else if (height >= nums[i][j-1]) {
                    continue;
                } else if (height >= nums[i][j+1]) {
                    continue;
                } else if (height >= nums[i+1][j-1]) {
                    continue;
                } else if (height >= nums[i+1][j]) {
                    continue;
                } else if (height >= nums[i+1][j+1]) {
                    continue;
                } else {
                    //System.out.println("added");
                    riskLevels.add(height + 1);
                }
            }
        }
        System.out.println("risklevel");
        
        Integer sum = 0;
        for(Integer level : riskLevels)
            sum += level;
        System.out.println(sum);
    }
}
package com.varxyz.jv200.mod008;

public class LeastCommonMultiple {	// LeastCommonMultiple는 클래스명
   public int CommonMultiple(int num) {	// CommonMultiple 메소드생성 파라미터 추가
	      int tempNum = num;
	      int quotient = 0;
	      for (int i = 2; i < num; i++) {
	         if(tempNum % i == 0) {
	            quotient = i;
//		            System.out.println(tempNum+"을");
	            tempNum = tempNum / quotient;
//		            System.out.println(quotient+"로 나눔");
//		            System.out.println("마지막값"+tempNum+"\n");
	            i = 1;
	            if(tempNum > 1) {
	               System.out.print(quotient + " X ");               
	            }
	            if(tempNum == 1) {
	               System.out.println(quotient + " = " + num);
	            }
	         }
	      }
	     return num;
	  }
}

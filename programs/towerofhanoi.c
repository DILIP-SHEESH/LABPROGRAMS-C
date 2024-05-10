#include<stdio.h>
int movecount=0;
void towerofhanoi(int n,char source,char auxiliary,char destination)
{
	if(n==1)
	{
		printf("MOVE DISK 1 from %c to %c\n",source,destination);
		movecount++;
	}
	else
	{
		towerofhanoi(n-1,source,destination,auxiliary);
		printf("MOVE DISK %d from %c to %c\n",n,source,destination);
		movecount++;
		towerofhanoi(n-1,auxiliary,source,destination);
	}
}
int main()
{
	int n;
	printf("ENTER THE NUMBER OF DISKS:");
	scanf("%d",&n);
	towerofhanoi(n,'A','B','C');
	printf("Total number of moves: %d\n", movecount);
	return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>

#define MAX_SIZE 100

// Function to check if the character is an operator
int isOperator(char ch) {
    return (ch == '+' || ch == '-' || ch == '*' || ch == '/' || ch == '%' || ch == '^');
}

// Function to perform the operation based on the operator
int performOperation(int operand1, int operand2, char operator) {
    switch(operator) {
        case '+':
            return operand1 + operand2;
        case '-':
            return operand1 - operand2;
        case '*':
            return operand1 * operand2;
        case '/':
            return operand1 / operand2;
        case '%':
            return operand1 % operand2;
        case '^':
            return (int)pow(operand1, operand2);
        default:
            return 0; // Handle invalid operators
    }
}
// Function to evaluate postfix expression
int evaluatePostfix(char postfix[]) {
    int stack[MAX_SIZE];
    int top = -1;
    int i;

    for (i = 0; postfix[i] != '\0'; i++) {
        char ch = postfix[i];

        if (isdigit(ch)) {
            int operand = 0;
            // Keep reading digits until a non-digit character is encountered
            while (isdigit(postfix[i])) {
                operand = operand * 10 + (postfix[i] - '0');
                i++;
            }
            i--; // Adjust the index to handle the non-digit character
            stack[++top] = operand;
        } else if (isOperator(ch)) {
            // Pop two operands from stack, perform operation, and push the result back to the stack
            int operand2 = stack[top--];
            int operand1 = stack[top--];
            int result = performOperation(operand1, operand2, ch);
            stack[++top] = result;
        }
    }

    return stack[top];  // The final result is at the top of the stack
}

int main() {
    char postfix[MAX_SIZE];

    printf("Enter a postfix expression: ");

    // Use %s to read a string without spaces until a newline character is encountered
    scanf("%[^\n]", postfix);

    int result = evaluatePostfix(postfix);

    printf("Result: %d\n", result);

    return 0;
}



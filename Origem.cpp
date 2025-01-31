#include <iostream>
#include <cstdio>
#include <locale.h>
#include <cstdlib>

using namespace std;
extern "C" int SomaASM(int num1, int num2);
extern "C" int SubtracaoASM(int num1, int num2);
extern "C" int MultiASM(int num1, int num2);
extern "C" int DivisaoASM(int num1, int num2);

void limparTela() {
    system("cls");
}

int main() {
    setlocale(LC_ALL, "Portuguese");

    int Op, num1 = 0, num2 = 0, Operacao = 0;

    do {
        limparTela();
        cout << "Digite os dois números, em seguida, escolha a operação desejada!" << endl;
        cout << endl << "Digite o Primeiro Valor: ";
        cin >> num1;
        cout << "Digite o Segundo Valor: ";
        cin >> num2;

        cout << endl << "Selecione a Operação que Deseja Realizar" << endl;
        cout << "[1] - Soma" << endl;
        cout << "[2] - Subtração" << endl;
        cout << "[3] - Multiplicação" << endl;
        cout << "[4] - Divisão" << endl;
        cout << "[5] - Sair" << endl;
        cout << endl << "Digite a operação: ";

        cin >> Op;

        switch (Op) {
        case 1:
            Operacao = SomaASM(num1, num2);
            cout << "Resultado = " << Operacao << endl;
            break;

        case 2:
            Operacao = SubtracaoASM(num1, num2);
            cout << "Resultado = " << Operacao << endl;
            break;

        case 3:
            Operacao = MultiASM(num1, num2);
            cout << "Resultado = " << Operacao << endl;
            break;

        case 4:
            if (num2 != 0) {
                Operacao = DivisaoASM(num1, num2);
                cout << "Resultado = " << Operacao << endl; 

            }
            else {
                cout << endl << "Não é possível a divisão por 0" << endl;
            }
            break;

        case 5:
            cout << endl << "Você saiu" << endl;
            break;

        default:
            cout << "Opção Inválida. Tente novamente." << endl;
            break;
        }

        if (Op != 5) { 
            char continuar;
            cout << "Deseja realizar outra operação? (s/n): ";
            cin >> continuar;

            if (continuar == 'n' || continuar == 'N') {
                Op = 5; // Define Op como 5 para sair do loop
                cout << "Obrigado!" << endl;
            }
        }

        cout << endl;

    } while (Op != 5); 
    return 0;
}

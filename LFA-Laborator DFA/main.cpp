#include <bits/stdc++.h>

using namespace std;

struct transition{
    int stare1;
    int stare2;
    char simbol;
};


int numarFinale;
int litCr = 0;
int numarTranzitii;
int stareInitiala;
string cuvant;

int ok = 0;

vector<transition> transitions;
vector<int> finale;

void DFA(int stare, string cuv)
{
    litCr++;
    if(litCr == cuv.size())
        for(int i = 0;i<numarFinale;i++) {
            if (stare == finale[i]) {
                ok = 1;
                return;
            }
        }
    else
        {
        for(int i = 0;i<numarTranzitii;i++)
        {
            if(transitions[i].stare1 == stare && transitions[i].simbol == cuv[litCr]){
                DFA(transitions[i].stare2,cuv);
            }
        }
    }
}

void readStareInitiala(){
    cout<<" Introduceti starea initiala: ";
    cin>>stareInitiala;
    cout<<endl;
}

void readStariFinale(){

    cout<<"Introduceti numarul de stari finale: ";
    cin>>numarFinale;
    cout<<endl;

    cout<<"Introduceti starile finale: "<<endl;

    for(int i = 0;i<numarFinale;i++)
    {
        int x;
        cout<<"starea finala "<<i+1<<":";
        cin>>x;
        finale.push_back(x);
    }
    cout<<endl;
}

void readTransition(){
    cout<<"Introduceti numarul de tranzitii:";
    cin>>numarTranzitii;
    cout<<endl;

    cout<<"Acum introduceti tranzitiile: (stare1 stare2 simbol)"<<endl;
    for(int i = 0;i<numarTranzitii;i++)
    {
        cout<<"tranzitia "<<i+1;
        cout<<endl;
        transition x;

        cin>>x.stare1;
        cin>>x.stare2;
        cin>>x.simbol;
        transitions.push_back(x);
    }
}
void automataConstructor(){
    readStareInitiala();
    readStariFinale();
    readTransition();
}

void checking(){

    cout<<ok<<endl;
    cout<<"Introduceti cuvantul pe care doriti sa il verificati:"<<endl;
    cin>>cuvant;


    for(int i = 0;i<numarTranzitii;i++)
        if((transitions[i].stare1 == stareInitiala) && (transitions[i].simbol == cuvant[litCr]))
            DFA(transitions[i].stare2,cuvant);

    if (ok == 1){
        cout<<"cuvant acceptat"<<endl;
    }
    else{
        cout<<"cuvantul nu a fost acceptat :("<<endl;
    }

    cout<<endl;
    cout<<"Alegeti urmatoarea actiune:\n";
    cout<<"1.Introduc cuvant nou\n";
    cout<<"2.Exit\n";
    cout<<endl;
    int n;
    cin>>n;
    switch (n) {
        case 1:
            ok = 0;
            litCr = 0;
            checking();
        case 2:
            return;
    }
}


int main() {

    automataConstructor();
    checking();

    return 0;
}

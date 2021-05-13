#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstring>
#include <map>

using namespace std;

vector<char> simboluri;
vector<char> alfabet;
map<char, vector<string>> expresii;
vector<string> array_cuvinte;

ifstream fin("generare.in");


void citire() {
	string line;
	getline(fin, line);

	for (auto i : line) {
		if (i != ' ') simboluri.push_back(i);
	}

	getline(fin, line);
	for (auto i : line) {
		if (i != ' ') alfabet.push_back(i);
	}

	getline(fin, line);
	while (line != "final") {
		vector<string> aux;
		char simbol = line[0];
		string tranzitie = "";
		for (int i = 2; i < line.size(); i++) {
			tranzitie += line[i];
		}
		if (tranzitie == "lambda") {
			tranzitie = "";
		}

		expresii[simbol].push_back(tranzitie);
		getline(fin, line);
	}
}

bool seeIfHasSymbols(vector<char> cuv) {
	for (auto i : cuv) {
		for (auto j : simboluri) {
			if (i == j) {
				return true;
			}
		}
	}
	return false;
}

bool seeIfInArrayCuvinte(string cuv) {
	for (auto i : array_cuvinte) {
		if (cuv == i)
			return true;
	}
	return false;
}

void printCuv(vector<char> cuv) {
	for (auto i : cuv) {
		cout << i;
	}
	cout << '\n';
}

int n;

bool seeIfInSimboluri(char x) {
	for (auto i : simboluri) {
		if (x == i)
			return true;
	}
	return false;
}
void generate(vector<char> cuv) {
	printCuv(cuv);
	if (cuv.size() > n + 1) {
		return;
	}
	if (cuv.size() == n && !seeIfHasSymbols(cuv)) {
		string cuvant = "";
		for (auto i : cuv) {
			cuvant += i;
		}
		if (!seeIfInArrayCuvinte(cuvant)) {
			array_cuvinte.push_back(cuvant);
		}
	}
	else {
		for (int i = 0; i < cuv.size();i++) {
			if (seeIfInSimboluri(cuv[i])) {
				for (auto k : expresii[cuv[i]]) {
					vector<char> aux;
					for (int lit = 0; lit < i; lit++) {
						aux.push_back(cuv[lit]);
					}
					for (auto lit : k) {
						if(lit)
							aux.push_back(lit);
					}
					int lit = i + 1;
					while (lit < cuv.size()) {
						aux.push_back(cuv[lit]);
						lit++;
					}
					generate(aux);
				}
			}
		}
	}
}

int main()
{
	citire();
	
	cout << "introduceti dimensiunea cuvintelor:";
	cin >> n;
	vector<char> cuv;
	for (auto trecere : expresii['S']) {
		for (auto i : trecere) {
			if(i)
				cuv.push_back(i);
		}
		generate(cuv);
		cuv.clear();
	}

	cout << endl;
	cout << "[" << ' ';
	for (int i = 0; i < array_cuvinte.size();i++) {
		if (i != array_cuvinte.size() - 1)
			cout << array_cuvinte[i] << ", ";
		else
			cout << array_cuvinte[i] << " ";
	}
	cout << "]";

	return 0;
}
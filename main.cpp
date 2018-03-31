    #include<fstream>
	#include<stdlib.h>
	#include<bits/stdc++.h>
#include <unistd.h>


    using namespace std;
	ifstream fin;
	ofstream fout;
	int count = 0;

	class criminal {
		int sno, age;
		char name[20], gender, residency[50], fname[20], reason[20];
	public:
		void input();

		void output();

		void rno(int x);

		void del();

		int f1(char na[20]) {
			return strcmp(name, na);
		}

		int f2(int x) {
		int a = 0;
			if (sno == x)
				return a;
			else
				return (a + 1);
		}

		char *getname() {
			return name;
		}
	} s;

	void criminal::input() {
		system("clear");
		int a = 1;
		ofstream fout;
		if (!fout) {
			cout << "Cannot be created ";
			return;
		}
		fout.open("input.dat", ios::binary | ios::out);
		char ch;
		do {
			cout << "Enter the serial number = ";
			cin >> sno;
			cout << "Enter name = ";
			gets(name);
			cout << "Enter Father name =";
			gets(fname);
			cout << "Enter age = ";
			cin >> age;
			cout << "Enter the reason for arrest =";
			gets(reason);
			cout << "Enter gender(M/F) = ";
			cin >> gender;
			while (a == 1) {
				if (gender == 'M' || gender == 'F') {
					a = 0;
					break;
				} else {
					cout << "Enter correct gender \n";
				}
			}
			cout << "Enter residency =";
			gets(residency);
			fout.write((char *) &s, sizeof(s));
			cout << "Do you want to enter more?(Y/N)\n";
			cin >> ch;
		} while (ch == 'Y' || ch == 'y');
		fout.close();
	}

	void criminal::output() {       // system("clear");
		cout << "\nSerial number = " << sno;
		cout << "\nName = " << name;
		cout << "\nFather's name = " << fname;
		cout << "\nAge = " << age;
		cout << "\nReason = " << reason;
		cout << "\nGender = " << gender;
		cout << "\nResidency = " << residency;

	}

	void name(char n[20]) {
		int f;
		int y = 0;
		fin.open("input.dat", ios::binary);
		while (fin) {
			fin.read((char *) &s, sizeof(s));
			f = s.f1(n);
			if (f == 0) {
				s.output();
				y = 1;
			}
		}
		if (y == 0)
			cout << "Not Found";
		fin.close();
	}

	void criminal::rno(int y) {
		int d, f = 0;
		fin.open("input.dat", ios::binary);
		while (fin) {
			fin.read((char *) &s, sizeof(s));
			f = s.f2(y);
			if (f == 0) {
				s.output();
				d = 1;
				break;
			}

		}
		if (d == 0) {
			cout << "Not found";
		}
		fin.close();
	}

	void criminal::del() {
		fin.open("input.dat", ios::binary | ios::in);
		fin.seekg(0);
		char x[20];
		int b, c = 0;
		char nam[20];
		system("clear");
		cout << "Enter the name of the person for whom "
				"you want to edit the data = ";
		gets(nam);
		char v[20], d[20], e[20];
		int i, ch, flag = 0;
		fout.open("ABC.dat", ios::binary | ios::app);
		fin.seekg(0);
		while (fin) {
			fin.read((char *) &s, sizeof(s));
			strcpy(x, getname());
			if (strcmp(x, nam) != 0) {
				fout.write((char *) &s, sizeof(s));
				flag = 1;
			}
		}
		if (flag == 1)
			cout << "Record of the person whose name is "
				 << nam << " is succesfully deleted !!!";
		for (i = 0; i < 5; i++)
			cout << "\n";
		if (flag == 0)
			cout << "Not Found";
		fin.close();
		fout.close();
		remove("input.dat");
		rename("ABC.dat", "input.dat");

	}


	int main() {
		system("clear");
		int i, n, x, d;
		char ch, na[20];
		system("clear");
		int choice, c, j, u;
		system("clear");
		for (i = 0; i < 21; i++)
			cout << "\n";
		cout << "\t\t\t\t" << "  " << "WELCOME!!!!\n\n";
		cout << "\n\t\t\t" << "  " << "PRESS "
				"ANY KEY TO CONTINUE \n";
		for (i = 0; i < 10; i++)
			cout << "\n";
		cout << "\t\t\t\t\t\t\tMADE BY:- P Surya, "
				"Saarthak S., Varun S.\n\n";
		cout << "\t\t\t\t\t\t\tC++ Mini Project";
		cin.get();
		system("clear");
		char pass[20];
        char **p;
        strcpy(pass, "test");
		for (i = 3; i > 0; i--) {
			//cout << "\n\n\n\n\n\n\n\n\n\n\t\t\t\t"
			//		"Enter password = \n";
			cout << "\n\n\t\t\t\t";
			for (u = 0; u < 5; u++) {
				p[u] = (getpass("\n\n\n\n\n\n\n\n\n\n Enter password = \n"));
                cout<<"*";
			}
			p[u] = '\0';
			system("clear");

			if (strcmp(p, pass) == 0) {
				cout << " \t\t\t\t\tCORRECT!!!!!";
				break;
			} else {
				if ((i - 1) != 1)
					cout << "\n\n\n\n\n\n\n\n\n\n\t\t\t  "
							" You have " << i - 1
						 << " chances left ";
				else
					cout << "\n\n\n\n\n\n\n\n\n\n\t\t\t  "
							"  You have " << "1"
						 << " chance left ";
			}
		}
		system("clear");
		if (i == 0) {
			cout << "Wrong password!!!!!";
			exit(0);
		}
		system("clear");
		do {
			system("clear");
			for (c = 0; c < 40; c++)
				cout << "*-";
			cout << "\t\t\t\tENTER YOUR CHOICE";
			cout
					<< "\n\t1) Input Data\n\t""2) Display all \n\t"
							"3) Search by name \n\t 4) Search by serial number \n\t"
							"5) Delete a record \n\t"
							"6) Exit\n";
			for (c = 0; c < 40; c++)
				cout << "*-";
			cin >> choice;
			switch (choice) {
				case 1:
					s.input(); break;
				case 2:
					fin.seekg(0);
					fin.open("input.dat", ios::binary);
					while (fin.read((char *) &s, sizeof(s))) {
						s.output(); cout << "\n\n\n";
					}
					break;
				case 3:
					cout << "Enter the name of the person = \n";
					gets(na); name(na);
					break;
				case 4:
					cout << "Enter the serial number =\n";
					cin >> x; s.rno(x);
					break;
				case 5:
					s.del(); break;
				case 6:
					exit(0);
				default:
					cout << "Wrong choice selected\n";

			}
			cout << "\nDo you want to go back to the main menu  ?(Y/N)\n";
			cin >> ch;
		} while (ch == 'Y' || ch == 'y');
		cin.get();
		return 0;
	}

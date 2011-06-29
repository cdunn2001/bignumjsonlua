#include <iostream>
#include <json/value.h>
#include <json/reader.h>
using namespace std;

Json::Value global;

int main(){
    Json::Value root;
    cin >> root;
    global = "foo";
    cout << global.asString() << endl;
    cout << global.asInt() << endl;
    cout << "Done\n";
    return 0;
}

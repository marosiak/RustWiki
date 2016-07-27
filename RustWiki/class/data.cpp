#include "data.h"

Data::Data(QObject *parent) : QObject(parent){

}

void Data::assignData(){
    HuntingBow = {
        {"Type",        "Ranged Weapon"},
        {"Fire Mode",   "Single Fire"},
        {"Range",       "150m"}
    };
}

QString Data::getValue(QJsonObject object, QString property){
    return object.value(property).toString();
}

QJsonObject Data::getHuntingBow() const
{
    return HuntingBow;
}

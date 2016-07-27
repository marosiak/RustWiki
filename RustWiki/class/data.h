#ifndef DATA_H
#define DATA_H

#include <QObject>
#include <QJsonObject>
#include <QJsonValue>
#include <QDebug>

class Data : public QObject
{
    Q_OBJECT
public:
    explicit Data(QObject *parent = 0);
    Q_INVOKABLE void assignData();
    Q_INVOKABLE QString getValue(QJsonObject object, QString property);
    ///
    Q_INVOKABLE QJsonObject HuntingBow{};
    Q_INVOKABLE QJsonObject SemiPistol{};
    Q_INVOKABLE QJsonObject getHuntingBow() const;

signals:

public slots:
};

#endif // DATA_H

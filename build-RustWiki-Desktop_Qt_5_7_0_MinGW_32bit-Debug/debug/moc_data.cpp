/****************************************************************************
** Meta object code from reading C++ file 'data.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../RustWiki/class/data.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'data.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Data_t {
    QByteArrayData data[7];
    char stringdata0[56];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Data_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Data_t qt_meta_stringdata_Data = {
    {
QT_MOC_LITERAL(0, 0, 4), // "Data"
QT_MOC_LITERAL(1, 5, 10), // "assignData"
QT_MOC_LITERAL(2, 16, 0), // ""
QT_MOC_LITERAL(3, 17, 8), // "getValue"
QT_MOC_LITERAL(4, 26, 6), // "object"
QT_MOC_LITERAL(5, 33, 8), // "property"
QT_MOC_LITERAL(6, 42, 13) // "getHuntingBow"

    },
    "Data\0assignData\0\0getValue\0object\0"
    "property\0getHuntingBow"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Data[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x02 /* Public */,
       3,    2,   30,    2, 0x02 /* Public */,
       6,    0,   35,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void,
    QMetaType::QString, QMetaType::QJsonObject, QMetaType::QString,    4,    5,
    QMetaType::QJsonObject,

       0        // eod
};

void Data::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Data *_t = static_cast<Data *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->assignData(); break;
        case 1: { QString _r = _t->getValue((*reinterpret_cast< QJsonObject(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 2: { QJsonObject _r = _t->getHuntingBow();
            if (_a[0]) *reinterpret_cast< QJsonObject*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject Data::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Data.data,
      qt_meta_data_Data,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Data::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Data::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Data.stringdata0))
        return static_cast<void*>(const_cast< Data*>(this));
    return QObject::qt_metacast(_clname);
}

int Data::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE

/****************************************************************************
** Meta object code from reading C++ file 'MSWindowsClipboardTests.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.11.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../../../../src/unittests/platform/MSWindowsClipboardTests.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MSWindowsClipboardTests.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 69
#error "This file was generated using the moc from 6.11.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {
struct qt_meta_tag_ZN23MSWindowsClipboardTestsE_t {};
} // unnamed namespace

template <> constexpr inline auto MSWindowsClipboardTests::qt_create_metaobjectdata<qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "MSWindowsClipboardTests",
        "initTestCase",
        "",
        "cleanupTestCase",
        "emptyUnusedClipboard",
        "emptyOpenCalled",
        "emptySingleFormat",
        "addValue",
        "replaceValue",
        "openTimeIsOne",
        "closeIsOpen",
        "getTimeOpenWithNoEmpty",
        "getTimeOpenAndEmpty",
        "has_withFormatAdded",
        "has_withNoFormatAdded",
        "getNonEmptyText",
        "isOwnedByDeskflow"
    };

    QtMocHelpers::UintData qt_methods {
        // Slot 'initTestCase'
        QtMocHelpers::SlotData<void()>(1, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'cleanupTestCase'
        QtMocHelpers::SlotData<void()>(3, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'emptyUnusedClipboard'
        QtMocHelpers::SlotData<void()>(4, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'emptyOpenCalled'
        QtMocHelpers::SlotData<void()>(5, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'emptySingleFormat'
        QtMocHelpers::SlotData<void()>(6, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'addValue'
        QtMocHelpers::SlotData<void()>(7, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'replaceValue'
        QtMocHelpers::SlotData<void()>(8, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'openTimeIsOne'
        QtMocHelpers::SlotData<void()>(9, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'closeIsOpen'
        QtMocHelpers::SlotData<void()>(10, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'getTimeOpenWithNoEmpty'
        QtMocHelpers::SlotData<void()>(11, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'getTimeOpenAndEmpty'
        QtMocHelpers::SlotData<void()>(12, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'has_withFormatAdded'
        QtMocHelpers::SlotData<void()>(13, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'has_withNoFormatAdded'
        QtMocHelpers::SlotData<void()>(14, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'getNonEmptyText'
        QtMocHelpers::SlotData<void()>(15, 2, QMC::AccessPrivate, QMetaType::Void),
        // Slot 'isOwnedByDeskflow'
        QtMocHelpers::SlotData<void()>(16, 2, QMC::AccessPrivate, QMetaType::Void),
    };
    QtMocHelpers::UintData qt_properties {
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<MSWindowsClipboardTests, qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject MSWindowsClipboardTests::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>.metaTypes,
    nullptr
} };

void MSWindowsClipboardTests::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<MSWindowsClipboardTests *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->initTestCase(); break;
        case 1: _t->cleanupTestCase(); break;
        case 2: _t->emptyUnusedClipboard(); break;
        case 3: _t->emptyOpenCalled(); break;
        case 4: _t->emptySingleFormat(); break;
        case 5: _t->addValue(); break;
        case 6: _t->replaceValue(); break;
        case 7: _t->openTimeIsOne(); break;
        case 8: _t->closeIsOpen(); break;
        case 9: _t->getTimeOpenWithNoEmpty(); break;
        case 10: _t->getTimeOpenAndEmpty(); break;
        case 11: _t->has_withFormatAdded(); break;
        case 12: _t->has_withNoFormatAdded(); break;
        case 13: _t->getNonEmptyText(); break;
        case 14: _t->isOwnedByDeskflow(); break;
        default: ;
        }
    }
    (void)_a;
}

const QMetaObject *MSWindowsClipboardTests::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MSWindowsClipboardTests::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN23MSWindowsClipboardTestsE_t>.strings))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int MSWindowsClipboardTests::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 15;
    }
    return _id;
}
QT_WARNING_POP

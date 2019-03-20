// Autogenerated by Frugal Compiler (3.1.0)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart' as thrift;
import 'package:include_vendor/include_vendor.dart' as t_include_vendor;
import 'package:some_vendored_place/vendor_namespace.dart' as t_vendor_namespace;
import 'package:excepts/excepts.dart' as t_excepts;

class VendoredReferences implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = new thrift.TStruct("VendoredReferences");
  static final thrift.TField _REFERENCE_VENDORED_CONST_FIELD_DESC = new thrift.TField("reference_vendored_const", thrift.TType.I32, 1);
  static final thrift.TField _REFERENCE_VENDORED_ENUM_FIELD_DESC = new thrift.TField("reference_vendored_enum", thrift.TType.I32, 2);

  int _reference_vendored_const;
  static const int REFERENCE_VENDORED_CONST = 1;
  int _reference_vendored_enum;
  static const int REFERENCE_VENDORED_ENUM = 2;

  bool __isset_reference_vendored_const = false;
  bool __isset_reference_vendored_enum = false;

  VendoredReferences() {
    this._reference_vendored_const = t_vendor_namespace.VendorNamespaceConstants.a_const;
    this._reference_vendored_enum = t_vendor_namespace.MyEnum.TWO;
  }

  int get reference_vendored_const => this._reference_vendored_const;

  set reference_vendored_const(int reference_vendored_const) {
    this._reference_vendored_const = reference_vendored_const;
    this.__isset_reference_vendored_const = true;
  }

  bool isSetReference_vendored_const() => this.__isset_reference_vendored_const;

  unsetReference_vendored_const() {
    this.__isset_reference_vendored_const = false;
  }

  int get reference_vendored_enum => this._reference_vendored_enum;

  set reference_vendored_enum(int reference_vendored_enum) {
    this._reference_vendored_enum = reference_vendored_enum;
    this.__isset_reference_vendored_enum = true;
  }

  bool isSetReference_vendored_enum() => this.__isset_reference_vendored_enum;

  unsetReference_vendored_enum() {
    this.__isset_reference_vendored_enum = false;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REFERENCE_VENDORED_CONST:
        return this.reference_vendored_const;
      case REFERENCE_VENDORED_ENUM:
        return this.reference_vendored_enum;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case REFERENCE_VENDORED_CONST:
        if (value == null) {
          unsetReference_vendored_const();
        } else {
          this.reference_vendored_const = value as int;
        }
        break;

      case REFERENCE_VENDORED_ENUM:
        if (value == null) {
          unsetReference_vendored_enum();
        } else {
          this.reference_vendored_enum = value as int;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REFERENCE_VENDORED_CONST:
        return isSetReference_vendored_const();
      case REFERENCE_VENDORED_ENUM:
        return isSetReference_vendored_enum();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case REFERENCE_VENDORED_CONST:
          if (field.type == thrift.TType.I32) {
            reference_vendored_const = iprot.readI32();
            this.__isset_reference_vendored_const = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REFERENCE_VENDORED_ENUM:
          if (field.type == thrift.TType.I32) {
            reference_vendored_enum = iprot.readI32();
            this.__isset_reference_vendored_enum = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (isSetReference_vendored_const()) {
      oprot.writeFieldBegin(_REFERENCE_VENDORED_CONST_FIELD_DESC);
      oprot.writeI32(reference_vendored_const);
      oprot.writeFieldEnd();
    }
    if (isSetReference_vendored_enum()) {
      oprot.writeFieldBegin(_REFERENCE_VENDORED_ENUM_FIELD_DESC);
      oprot.writeI32(reference_vendored_enum);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = new StringBuffer("VendoredReferences(");

    if (isSetReference_vendored_const()) {
      ret.write("reference_vendored_const:");
      ret.write(this.reference_vendored_const);
    }

    if (isSetReference_vendored_enum()) {
      ret.write(", ");
      ret.write("reference_vendored_enum:");
      String reference_vendored_enum_name = t_vendor_namespace.MyEnum.VALUES_TO_NAMES[this.reference_vendored_enum];
      if (reference_vendored_enum_name != null) {
        ret.write(reference_vendored_enum_name);
        ret.write(" (");
      }
      ret.write(this.reference_vendored_enum);
      if (reference_vendored_enum_name != null) {
        ret.write(")");
      }
    }

    ret.write(")");

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is VendoredReferences) {
      return this.reference_vendored_const == o.reference_vendored_const &&
        this.reference_vendored_enum == o.reference_vendored_enum;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ reference_vendored_const.hashCode;
    value = (value * 31) ^ reference_vendored_enum.hashCode;
    return value;
  }

  VendoredReferences clone({
    int reference_vendored_const: null,
    int reference_vendored_enum: null,
  }) {
    return new VendoredReferences()
      ..reference_vendored_const = reference_vendored_const ?? this.reference_vendored_const
      ..reference_vendored_enum = reference_vendored_enum ?? this.reference_vendored_enum;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetReference_vendored_enum() && !t_vendor_namespace.MyEnum.VALID_VALUES.contains(reference_vendored_enum)) {
      throw new thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "The field 'reference_vendored_enum' has been assigned the invalid value $reference_vendored_enum");
    }
  }
}

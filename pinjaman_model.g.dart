// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinjaman_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPinjamanCollection on Isar {
  IsarCollection<Pinjaman> get pinjamans => this.collection();
}

const PinjamanSchema = CollectionSchema(
  name: r'Pinjaman',
  id: -1226696374570736331,
  properties: {
    r'angsuranPerBulan': PropertySchema(
      id: 0,
      name: r'angsuranPerBulan',
      type: IsarType.double,
    ),
    r'nominal': PropertySchema(
      id: 1,
      name: r'nominal',
      type: IsarType.double,
    ),
    r'status': PropertySchema(
      id: 2,
      name: r'status',
      type: IsarType.string,
    ),
    r'tanggal': PropertySchema(
      id: 3,
      name: r'tanggal',
      type: IsarType.dateTime,
    ),
    r'tenorBulan': PropertySchema(
      id: 4,
      name: r'tenorBulan',
      type: IsarType.long,
    )
  },
  estimateSize: _pinjamanEstimateSize,
  serialize: _pinjamanSerialize,
  deserialize: _pinjamanDeserialize,
  deserializeProp: _pinjamanDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pinjamanGetId,
  getLinks: _pinjamanGetLinks,
  attach: _pinjamanAttach,
  version: '3.1.0+1',
);

int _pinjamanEstimateSize(
  Pinjaman object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _pinjamanSerialize(
  Pinjaman object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.angsuranPerBulan);
  writer.writeDouble(offsets[1], object.nominal);
  writer.writeString(offsets[2], object.status);
  writer.writeDateTime(offsets[3], object.tanggal);
  writer.writeLong(offsets[4], object.tenorBulan);
}

Pinjaman _pinjamanDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pinjaman(
    angsuranPerBulan: reader.readDouble(offsets[0]),
    nominal: reader.readDouble(offsets[1]),
    status: reader.readString(offsets[2]),
    tanggal: reader.readDateTime(offsets[3]),
    tenorBulan: reader.readLong(offsets[4]),
  );
  object.id = id;
  return object;
}

P _pinjamanDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pinjamanGetId(Pinjaman object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pinjamanGetLinks(Pinjaman object) {
  return [];
}

void _pinjamanAttach(IsarCollection<dynamic> col, Id id, Pinjaman object) {
  object.id = id;
}

extension PinjamanQueryWhereSort on QueryBuilder<Pinjaman, Pinjaman, QWhere> {
  QueryBuilder<Pinjaman, Pinjaman, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PinjamanQueryWhere on QueryBuilder<Pinjaman, Pinjaman, QWhereClause> {
  QueryBuilder<Pinjaman, Pinjaman, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PinjamanQueryFilter
    on QueryBuilder<Pinjaman, Pinjaman, QFilterCondition> {
  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition>
      angsuranPerBulanEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'angsuranPerBulan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition>
      angsuranPerBulanGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'angsuranPerBulan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition>
      angsuranPerBulanLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'angsuranPerBulan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition>
      angsuranPerBulanBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'angsuranPerBulan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> nominalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nominal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> nominalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nominal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> nominalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nominal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> nominalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nominal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tanggalEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tanggal',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tanggalGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tanggal',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tanggalLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tanggal',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tanggalBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tanggal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tenorBulanEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenorBulan',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tenorBulanGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tenorBulan',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tenorBulanLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tenorBulan',
        value: value,
      ));
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterFilterCondition> tenorBulanBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tenorBulan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PinjamanQueryObject
    on QueryBuilder<Pinjaman, Pinjaman, QFilterCondition> {}

extension PinjamanQueryLinks
    on QueryBuilder<Pinjaman, Pinjaman, QFilterCondition> {}

extension PinjamanQuerySortBy on QueryBuilder<Pinjaman, Pinjaman, QSortBy> {
  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByAngsuranPerBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'angsuranPerBulan', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByAngsuranPerBulanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'angsuranPerBulan', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByNominalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByTanggalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByTenorBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenorBulan', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> sortByTenorBulanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenorBulan', Sort.desc);
    });
  }
}

extension PinjamanQuerySortThenBy
    on QueryBuilder<Pinjaman, Pinjaman, QSortThenBy> {
  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByAngsuranPerBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'angsuranPerBulan', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByAngsuranPerBulanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'angsuranPerBulan', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByNominalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByTanggalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.desc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByTenorBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenorBulan', Sort.asc);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QAfterSortBy> thenByTenorBulanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenorBulan', Sort.desc);
    });
  }
}

extension PinjamanQueryWhereDistinct
    on QueryBuilder<Pinjaman, Pinjaman, QDistinct> {
  QueryBuilder<Pinjaman, Pinjaman, QDistinct> distinctByAngsuranPerBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'angsuranPerBulan');
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QDistinct> distinctByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nominal');
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QDistinct> distinctByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tanggal');
    });
  }

  QueryBuilder<Pinjaman, Pinjaman, QDistinct> distinctByTenorBulan() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tenorBulan');
    });
  }
}

extension PinjamanQueryProperty
    on QueryBuilder<Pinjaman, Pinjaman, QQueryProperty> {
  QueryBuilder<Pinjaman, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Pinjaman, double, QQueryOperations> angsuranPerBulanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'angsuranPerBulan');
    });
  }

  QueryBuilder<Pinjaman, double, QQueryOperations> nominalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nominal');
    });
  }

  QueryBuilder<Pinjaman, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Pinjaman, DateTime, QQueryOperations> tanggalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tanggal');
    });
  }

  QueryBuilder<Pinjaman, int, QQueryOperations> tenorBulanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tenorBulan');
    });
  }
}

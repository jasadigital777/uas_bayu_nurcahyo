// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simpanan_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSimpananCollection on Isar {
  IsarCollection<Simpanan> get simpanans => this.collection();
}

const SimpananSchema = CollectionSchema(
  name: r'Simpanan',
  id: 1288148991967214064,
  properties: {
    r'jenis': PropertySchema(
      id: 0,
      name: r'jenis',
      type: IsarType.string,
    ),
    r'keterangan': PropertySchema(
      id: 1,
      name: r'keterangan',
      type: IsarType.string,
    ),
    r'nominal': PropertySchema(
      id: 2,
      name: r'nominal',
      type: IsarType.double,
    ),
    r'tanggal': PropertySchema(
      id: 3,
      name: r'tanggal',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _simpananEstimateSize,
  serialize: _simpananSerialize,
  deserialize: _simpananDeserialize,
  deserializeProp: _simpananDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _simpananGetId,
  getLinks: _simpananGetLinks,
  attach: _simpananAttach,
  version: '3.1.0+1',
);

int _simpananEstimateSize(
  Simpanan object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.jenis.length * 3;
  bytesCount += 3 + object.keterangan.length * 3;
  return bytesCount;
}

void _simpananSerialize(
  Simpanan object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.jenis);
  writer.writeString(offsets[1], object.keterangan);
  writer.writeDouble(offsets[2], object.nominal);
  writer.writeDateTime(offsets[3], object.tanggal);
}

Simpanan _simpananDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Simpanan(
    jenis: reader.readString(offsets[0]),
    keterangan: reader.readString(offsets[1]),
    nominal: reader.readDouble(offsets[2]),
    tanggal: reader.readDateTime(offsets[3]),
  );
  object.id = id;
  return object;
}

P _simpananDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _simpananGetId(Simpanan object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _simpananGetLinks(Simpanan object) {
  return [];
}

void _simpananAttach(IsarCollection<dynamic> col, Id id, Simpanan object) {
  object.id = id;
}

extension SimpananQueryWhereSort on QueryBuilder<Simpanan, Simpanan, QWhere> {
  QueryBuilder<Simpanan, Simpanan, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SimpananQueryWhere on QueryBuilder<Simpanan, Simpanan, QWhereClause> {
  QueryBuilder<Simpanan, Simpanan, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Simpanan, Simpanan, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterWhereClause> idBetween(
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

extension SimpananQueryFilter
    on QueryBuilder<Simpanan, Simpanan, QFilterCondition> {
  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jenis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jenis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jenis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jenis',
        value: '',
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> jenisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jenis',
        value: '',
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keterangan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keterangan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keterangan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> keteranganIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keterangan',
        value: '',
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition>
      keteranganIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keterangan',
        value: '',
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> nominalEqualTo(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> nominalGreaterThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> nominalLessThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> nominalBetween(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> tanggalEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tanggal',
        value: value,
      ));
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> tanggalGreaterThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> tanggalLessThan(
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

  QueryBuilder<Simpanan, Simpanan, QAfterFilterCondition> tanggalBetween(
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
}

extension SimpananQueryObject
    on QueryBuilder<Simpanan, Simpanan, QFilterCondition> {}

extension SimpananQueryLinks
    on QueryBuilder<Simpanan, Simpanan, QFilterCondition> {}

extension SimpananQuerySortBy on QueryBuilder<Simpanan, Simpanan, QSortBy> {
  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByJenis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenis', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByJenisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenis', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByKeterangan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keterangan', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByKeteranganDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keterangan', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByNominalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> sortByTanggalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.desc);
    });
  }
}

extension SimpananQuerySortThenBy
    on QueryBuilder<Simpanan, Simpanan, QSortThenBy> {
  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByJenis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenis', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByJenisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenis', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByKeterangan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keterangan', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByKeteranganDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keterangan', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByNominalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominal', Sort.desc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.asc);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QAfterSortBy> thenByTanggalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggal', Sort.desc);
    });
  }
}

extension SimpananQueryWhereDistinct
    on QueryBuilder<Simpanan, Simpanan, QDistinct> {
  QueryBuilder<Simpanan, Simpanan, QDistinct> distinctByJenis(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jenis', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QDistinct> distinctByKeterangan(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keterangan', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Simpanan, Simpanan, QDistinct> distinctByNominal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nominal');
    });
  }

  QueryBuilder<Simpanan, Simpanan, QDistinct> distinctByTanggal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tanggal');
    });
  }
}

extension SimpananQueryProperty
    on QueryBuilder<Simpanan, Simpanan, QQueryProperty> {
  QueryBuilder<Simpanan, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Simpanan, String, QQueryOperations> jenisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jenis');
    });
  }

  QueryBuilder<Simpanan, String, QQueryOperations> keteranganProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keterangan');
    });
  }

  QueryBuilder<Simpanan, double, QQueryOperations> nominalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nominal');
    });
  }

  QueryBuilder<Simpanan, DateTime, QQueryOperations> tanggalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tanggal');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sembako_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSembakoCollection on Isar {
  IsarCollection<Sembako> get sembakos => this.collection();
}

const SembakoSchema = CollectionSchema(
  name: r'Sembako',
  id: -7452833245069636360,
  properties: {
    r'harga': PropertySchema(
      id: 0,
      name: r'harga',
      type: IsarType.double,
    ),
    r'imagePath': PropertySchema(
      id: 1,
      name: r'imagePath',
      type: IsarType.string,
    ),
    r'kategori': PropertySchema(
      id: 2,
      name: r'kategori',
      type: IsarType.string,
    ),
    r'nama': PropertySchema(
      id: 3,
      name: r'nama',
      type: IsarType.string,
    ),
    r'stok': PropertySchema(
      id: 4,
      name: r'stok',
      type: IsarType.long,
    )
  },
  estimateSize: _sembakoEstimateSize,
  serialize: _sembakoSerialize,
  deserialize: _sembakoDeserialize,
  deserializeProp: _sembakoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sembakoGetId,
  getLinks: _sembakoGetLinks,
  attach: _sembakoAttach,
  version: '3.1.0+1',
);

int _sembakoEstimateSize(
  Sembako object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.imagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.kategori.length * 3;
  bytesCount += 3 + object.nama.length * 3;
  return bytesCount;
}

void _sembakoSerialize(
  Sembako object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.harga);
  writer.writeString(offsets[1], object.imagePath);
  writer.writeString(offsets[2], object.kategori);
  writer.writeString(offsets[3], object.nama);
  writer.writeLong(offsets[4], object.stok);
}

Sembako _sembakoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Sembako(
    harga: reader.readDouble(offsets[0]),
    imagePath: reader.readStringOrNull(offsets[1]),
    kategori: reader.readString(offsets[2]),
    nama: reader.readString(offsets[3]),
    stok: reader.readLong(offsets[4]),
  );
  object.id = id;
  return object;
}

P _sembakoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sembakoGetId(Sembako object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sembakoGetLinks(Sembako object) {
  return [];
}

void _sembakoAttach(IsarCollection<dynamic> col, Id id, Sembako object) {
  object.id = id;
}

extension SembakoQueryWhereSort on QueryBuilder<Sembako, Sembako, QWhere> {
  QueryBuilder<Sembako, Sembako, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SembakoQueryWhere on QueryBuilder<Sembako, Sembako, QWhereClause> {
  QueryBuilder<Sembako, Sembako, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Sembako, Sembako, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterWhereClause> idBetween(
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

extension SembakoQueryFilter
    on QueryBuilder<Sembako, Sembako, QFilterCondition> {
  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> hargaEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'harga',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> hargaGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'harga',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> hargaLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'harga',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> hargaBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'harga',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kategori',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kategori',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kategori',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kategori',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> kategoriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kategori',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nama',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nama',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nama',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nama',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> namaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nama',
        value: '',
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> stokEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stok',
        value: value,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> stokGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stok',
        value: value,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> stokLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stok',
        value: value,
      ));
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterFilterCondition> stokBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stok',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SembakoQueryObject
    on QueryBuilder<Sembako, Sembako, QFilterCondition> {}

extension SembakoQueryLinks
    on QueryBuilder<Sembako, Sembako, QFilterCondition> {}

extension SembakoQuerySortBy on QueryBuilder<Sembako, Sembako, QSortBy> {
  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByHarga() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harga', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByHargaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harga', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByKategori() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kategori', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByKategoriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kategori', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByNama() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByNamaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByStok() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stok', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> sortByStokDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stok', Sort.desc);
    });
  }
}

extension SembakoQuerySortThenBy
    on QueryBuilder<Sembako, Sembako, QSortThenBy> {
  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByHarga() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harga', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByHargaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harga', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByKategori() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kategori', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByKategoriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kategori', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByNama() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByNamaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nama', Sort.desc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByStok() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stok', Sort.asc);
    });
  }

  QueryBuilder<Sembako, Sembako, QAfterSortBy> thenByStokDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stok', Sort.desc);
    });
  }
}

extension SembakoQueryWhereDistinct
    on QueryBuilder<Sembako, Sembako, QDistinct> {
  QueryBuilder<Sembako, Sembako, QDistinct> distinctByHarga() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'harga');
    });
  }

  QueryBuilder<Sembako, Sembako, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sembako, Sembako, QDistinct> distinctByKategori(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kategori', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sembako, Sembako, QDistinct> distinctByNama(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nama', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sembako, Sembako, QDistinct> distinctByStok() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stok');
    });
  }
}

extension SembakoQueryProperty
    on QueryBuilder<Sembako, Sembako, QQueryProperty> {
  QueryBuilder<Sembako, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Sembako, double, QQueryOperations> hargaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'harga');
    });
  }

  QueryBuilder<Sembako, String?, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }

  QueryBuilder<Sembako, String, QQueryOperations> kategoriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kategori');
    });
  }

  QueryBuilder<Sembako, String, QQueryOperations> namaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nama');
    });
  }

  QueryBuilder<Sembako, int, QQueryOperations> stokProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stok');
    });
  }
}

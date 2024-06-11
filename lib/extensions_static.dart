Duration sinceNow(DateTime self) => DateTime.now().difference(self);

X find<X>(List<X> self, [bool Function(X)? filter]) {
  return self.firstWhere(filter ?? (_) => true, orElse: () => null as X);
}

X lastOrNull<X>(List<X> self, [bool Function(X)? filter]) {
  return self.reversed
      .firstWhere(filter ?? (_) => true, orElse: () => null as X);
}

X firstOrNull<X>(List<X> self, [bool Function(X)? filter]) {
  return self.firstWhere(filter ?? (_) => true, orElse: () => null as X);
}

String truncate(String self, int length) {
  return self.length <= length ? self : self.substring(0, length);
}

bool isNullOrEmpty(String? self) {
  return self == null || self.isEmpty;
}

bool isNotNullOrEmpty(String? self) => !isNullOrEmpty(self);

bool isNullOrBlank(String? self) => self == null || self.trim().isEmpty;

bool isNotNullOrBlank(String? self) => !isNullOrBlank(self);

String orEmpty(String? self) {
  return self ?? "";
}

String value(dynamic self) {
  final String str = self.toString();
  final int lastDotIndex = str.lastIndexOf('.');
  return lastDotIndex == -1 ? str : str.substring(lastDotIndex + 1);
}

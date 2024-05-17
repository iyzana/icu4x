// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X DateTime object capable of containing a ISO-8601 date and time.
///
/// See the [Rust documentation for `DateTime`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html) for more information.
final class IsoDateTime implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  IsoDateTime._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XIsoDateTime_destroy));

  /// Creates a new [`IsoDateTime`] from the specified date and time.
  ///
  /// See the [Rust documentation for `try_new_iso_datetime`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.try_new_iso_datetime) for more information.
  ///
  /// Throws [Error] on failure.
  factory IsoDateTime(int year, int month, int day, int hour, int minute, int second, int nanosecond) {
    final result = _ICU4XIsoDateTime_create(year, month, day, hour, minute, second, nanosecond);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return IsoDateTime._fromFfi(result.union.ok, []);
  }

  /// Creates a new [`IsoDateTime`] from an [`IsoDate`] and [`Time`] object
  ///
  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.new) for more information.
  factory IsoDateTime.fromDateAndTime(IsoDate date, Time time) {
    final result = _ICU4XIsoDateTime_crate_from_date_and_time(date._ffi, time._ffi);
    return IsoDateTime._fromFfi(result, []);
  }

  /// Creates a new [`IsoDateTime`] of midnight on January 1, 1970
  ///
  /// See the [Rust documentation for `local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.local_unix_epoch) for more information.
  factory IsoDateTime.localUnixEpoch() {
    final result = _ICU4XIsoDateTime_local_unix_epoch();
    return IsoDateTime._fromFfi(result, []);
  }

  /// Construct from the minutes since the local unix epoch for this date (Jan 1 1970, 00:00)
  ///
  /// See the [Rust documentation for `from_minutes_since_local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.from_minutes_since_local_unix_epoch) for more information.
  factory IsoDateTime.fromMinutesSinceLocalUnixEpoch(int minutes) {
    final result = _ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch(minutes);
    return IsoDateTime._fromFfi(result, []);
  }

  /// Gets the date contained in this object
  ///
  /// See the [Rust documentation for `date`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#structfield.date) for more information.
  IsoDate get date {
    final result = _ICU4XIsoDateTime_date(_ffi);
    return IsoDate._fromFfi(result, []);
  }

  /// Gets the time contained in this object
  ///
  /// See the [Rust documentation for `time`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#structfield.time) for more information.
  Time get time {
    final result = _ICU4XIsoDateTime_time(_ffi);
    return Time._fromFfi(result, []);
  }

  /// Converts this to an [`DateTime`] capable of being mixed with dates of
  /// other calendars
  ///
  /// See the [Rust documentation for `to_any`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.to_any) for more information.
  DateTime toAny() {
    final result = _ICU4XIsoDateTime_to_any(_ffi);
    return DateTime._fromFfi(result, []);
  }

  /// Gets the minutes since the local unix epoch for this date (Jan 1 1970, 00:00)
  ///
  /// See the [Rust documentation for `minutes_since_local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.minutes_since_local_unix_epoch) for more information.
  int get minutesSinceLocalUnixEpoch {
    final result = _ICU4XIsoDateTime_minutes_since_local_unix_epoch(_ffi);
    return result;
  }

  /// Convert this datetime to one in a different calendar
  ///
  /// See the [Rust documentation for `to_calendar`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.to_calendar) for more information.
  DateTime toCalendar(Calendar calendar) {
    final result = _ICU4XIsoDateTime_to_calendar(_ffi, calendar._ffi);
    return DateTime._fromFfi(result, []);
  }

  /// Returns the hour in this time
  ///
  /// See the [Rust documentation for `hour`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.hour) for more information.
  int get hour {
    final result = _ICU4XIsoDateTime_hour(_ffi);
    return result;
  }

  /// Returns the minute in this time
  ///
  /// See the [Rust documentation for `minute`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.minute) for more information.
  int get minute {
    final result = _ICU4XIsoDateTime_minute(_ffi);
    return result;
  }

  /// Returns the second in this time
  ///
  /// See the [Rust documentation for `second`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.second) for more information.
  int get second {
    final result = _ICU4XIsoDateTime_second(_ffi);
    return result;
  }

  /// Returns the nanosecond in this time
  ///
  /// See the [Rust documentation for `nanosecond`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.nanosecond) for more information.
  int get nanosecond {
    final result = _ICU4XIsoDateTime_nanosecond(_ffi);
    return result;
  }

  /// Returns the 1-indexed day in the year for this date
  ///
  /// See the [Rust documentation for `day_of_year_info`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_year_info) for more information.
  int get dayOfYear {
    final result = _ICU4XIsoDateTime_day_of_year(_ffi);
    return result;
  }

  /// Returns the 1-indexed day in the month for this date
  ///
  /// See the [Rust documentation for `day_of_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_month) for more information.
  int get dayOfMonth {
    final result = _ICU4XIsoDateTime_day_of_month(_ffi);
    return result;
  }

  /// Returns the day in the week for this day
  ///
  /// See the [Rust documentation for `day_of_week`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_week) for more information.
  IsoWeekday get dayOfWeek {
    final result = _ICU4XIsoDateTime_day_of_week(_ffi);
    return IsoWeekday.values.firstWhere((v) => v._ffi == result);
  }

  /// Returns the week number in this month, 1-indexed, based on what
  /// is considered the first day of the week (often a locale preference).
  ///
  /// `first_weekday` can be obtained via `first_weekday()` on [`WeekCalculator`]
  ///
  /// See the [Rust documentation for `week_of_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.week_of_month) for more information.
  int weekOfMonth(IsoWeekday firstWeekday) {
    final result = _ICU4XIsoDateTime_week_of_month(_ffi, firstWeekday._ffi);
    return result;
  }

  /// Returns the week number in this year, using week data
  ///
  /// See the [Rust documentation for `week_of_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.week_of_year) for more information.
  ///
  /// Throws [Error] on failure.
  WeekOf weekOfYear(WeekCalculator calculator) {
    final result = _ICU4XIsoDateTime_week_of_year(_ffi, calculator._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return WeekOf._fromFfi(result.union.ok);
  }

  /// Returns 1-indexed number of the month of this date in its year
  ///
  /// See the [Rust documentation for `month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.month) for more information.
  int get month {
    final result = _ICU4XIsoDateTime_month(_ffi);
    return result;
  }

  /// Returns the year number for this date
  ///
  /// See the [Rust documentation for `year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.year) for more information.
  int get year {
    final result = _ICU4XIsoDateTime_year(_ffi);
    return result;
  }

  /// Returns whether this date is in a leap year
  ///
  /// See the [Rust documentation for `is_in_leap_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.is_in_leap_year) for more information.
  bool get isInLeapYear {
    final result = _ICU4XIsoDateTime_is_in_leap_year(_ffi);
    return result;
  }

  /// Returns the number of months in the year represented by this date
  ///
  /// See the [Rust documentation for `months_in_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.months_in_year) for more information.
  int get monthsInYear {
    final result = _ICU4XIsoDateTime_months_in_year(_ffi);
    return result;
  }

  /// Returns the number of days in the month represented by this date
  ///
  /// See the [Rust documentation for `days_in_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.days_in_month) for more information.
  int get daysInMonth {
    final result = _ICU4XIsoDateTime_days_in_month(_ffi);
    return result;
  }

  /// Returns the number of days in the year represented by this date
  ///
  /// See the [Rust documentation for `days_in_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.days_in_year) for more information.
  int get daysInYear {
    final result = _ICU4XIsoDateTime_days_in_year(_ffi);
    return result;
  }
}

@meta.ResourceIdentifier('ICU4XIsoDateTime_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XIsoDateTime_destroy(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_create')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Int32, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint32)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_create')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XIsoDateTime_create(int year, int month, int day, int hour, int minute, int second, int nanosecond);

@meta.ResourceIdentifier('ICU4XIsoDateTime_crate_from_date_and_time')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_crate_from_date_and_time')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_crate_from_date_and_time(ffi.Pointer<ffi.Opaque> date, ffi.Pointer<ffi.Opaque> time);

@meta.ResourceIdentifier('ICU4XIsoDateTime_local_unix_epoch')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'ICU4XIsoDateTime_local_unix_epoch')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_local_unix_epoch();

@meta.ResourceIdentifier('ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Int32)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch(int minutes);

@meta.ResourceIdentifier('ICU4XIsoDateTime_date')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_date')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_date(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_time')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_time')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_time(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_to_any')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_to_any')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_to_any(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_minutes_since_local_unix_epoch')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_minutes_since_local_unix_epoch')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_minutes_since_local_unix_epoch(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_to_calendar')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_to_calendar')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XIsoDateTime_to_calendar(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> calendar);

@meta.ResourceIdentifier('ICU4XIsoDateTime_hour')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_hour')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_hour(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_minute')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_minute')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_minute(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_second')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_second')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_second(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_nanosecond')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_nanosecond')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_nanosecond(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_day_of_year')
@ffi.Native<ffi.Uint16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_day_of_year')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_day_of_year(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_day_of_month')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_day_of_month')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_day_of_month(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_day_of_week')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_day_of_week')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_day_of_week(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_week_of_month')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_week_of_month')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_week_of_month(ffi.Pointer<ffi.Opaque> self, int firstWeekday);

@meta.ResourceIdentifier('ICU4XIsoDateTime_week_of_year')
@ffi.Native<_ResultWeekOfFfiInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_week_of_year')
// ignore: non_constant_identifier_names
external _ResultWeekOfFfiInt32 _ICU4XIsoDateTime_week_of_year(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> calculator);

@meta.ResourceIdentifier('ICU4XIsoDateTime_month')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_month')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_month(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_year')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_year')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_year(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_is_in_leap_year')
@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_is_in_leap_year')
// ignore: non_constant_identifier_names
external bool _ICU4XIsoDateTime_is_in_leap_year(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_months_in_year')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_months_in_year')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_months_in_year(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_days_in_month')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_days_in_month')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_days_in_month(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('ICU4XIsoDateTime_days_in_year')
@ffi.Native<ffi.Uint16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XIsoDateTime_days_in_year')
// ignore: non_constant_identifier_names
external int _ICU4XIsoDateTime_days_in_year(ffi.Pointer<ffi.Opaque> self);

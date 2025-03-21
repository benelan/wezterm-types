---@meta

---@class TimeObj
---@field format fun(self: TimeObj, format: string): string Formats the time object as a string, using the local date/time representation of the time.
---@field format_utc fun(self: TimeObj, format: string): string Formats the time object as a string, using the UTC date/time representation of the time.
---@field sun_times fun(self: TimeObj, lat: number, lon: number): { rise: TimeObj, set: TimeObj, progression: number, up: boolean } For the date component of the time object, compute the times of the sun rise and sun set for the given latitude and longitude.

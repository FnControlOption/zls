//! DO NOT EDIT
//! Configuration options for ZLS.
//! If you want to add a config option edit
//! src/tools/config.json
//! GENERATED BY src/tools/config_gen.zig

/// Enables snippet completions when the client also supports them
enable_snippets: bool = true,

/// Whether to enable function argument placeholder completions
enable_argument_placeholders: bool = true,

/// Whether to show the function signature in completion results. May improve readability in some editors when disabled
completion_label_details: bool = true,

/// Whether to enable build-on-save diagnostics. Will be automatically enabled if the `build.zig` has declared a 'check' step.
///
/// For more infromation, checkout the [Build-On-Save](https://zigtools.org/zls/guides/build-on-save/) Guide.
enable_build_on_save: ?bool = null,

/// Specify which arguments should be passed to Zig when running build-on-save.
///
/// If the `build.zig` has declared a 'check' step, it will be preferred over the default 'install' step.
build_on_save_args: []const []const u8 = &.{},

/// Set level of semantic tokens. `partial` only includes information that requires semantic analysis.
semantic_tokens: enum {
    none,
    partial,
    full,
} = .full,

/// Enable inlay hints for variable types
inlay_hints_show_variable_type_hints: bool = true,

/// Enable inlay hints for fields in struct and union literals
inlay_hints_show_struct_literal_field_type: bool = true,

/// Enable inlay hints for parameter names
inlay_hints_show_parameter_name: bool = true,

/// Enable inlay hints for builtin functions
inlay_hints_show_builtin: bool = true,

/// Don't show inlay hints for single argument calls
inlay_hints_exclude_single_argument: bool = true,

/// Hides inlay hints when parameter name matches the identifier (e.g. `foo: foo`)
inlay_hints_hide_redundant_param_names: bool = false,

/// Hides inlay hints when parameter name matches the last token of a parameter node (e.g. `foo: bar.foo`, `foo: &foo`)
inlay_hints_hide_redundant_param_names_last_token: bool = false,

/// Work around editors that do not support 'source.fixall' code actions on save. This option may delivered a substandard user experience. Please refer to the installation guide to see which editors natively support code actions on save.
force_autofix: bool = false,

/// Enables warnings for style guideline mismatches
warn_style: bool = false,

/// Whether to highlight global var declarations
highlight_global_var_declarations: bool = false,

/// When true, skips searching for references in the standard library. Improves lookup speed for functions in user's code. Renaming and go-to-definition will continue to work as is
skip_std_references: bool = false,

/// Favor using `zig ast-check` instead of the builtin one
prefer_ast_check_as_child_process: bool = true,

/// Override the path to 'builtin' module. Automatically resolved if unset.
builtin_path: ?[]const u8 = null,

/// Override the Zig library path. Will be automatically resolved using the 'zig_exe_path'.
zig_lib_path: ?[]const u8 = null,

/// Specify the path to the Zig executable (not the directory). If unset, zig is looked up in `PATH`. e.g. `/path/to/zig-templeos-armless-1.0.0/zig`.
zig_exe_path: ?[]const u8 = null,

/// Specify a custom build runner to resolve build system information.
build_runner_path: ?[]const u8 = null,

/// Path to a directory that will be used as zig's cache. Will default to `${KnownFolders.Cache}/zls`.
global_cache_path: ?[]const u8 = null,

// DO NOT EDIT

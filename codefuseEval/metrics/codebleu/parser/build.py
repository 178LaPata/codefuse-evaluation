from tree_sitter import Language
import tree_sitter_languages

try:
    import tree_sitter_languages
    print("tree_sitter_languages is available - using pre-built language parsers")
    
    # Example of how to get languages:
    # python_lang = tree_sitter_languages.get_language('python')
    # javascript_lang = tree_sitter_languages.get_language('javascript')
    # etc.
    
except ImportError:
    print("tree_sitter_languages not found. Installing...")
    import subprocess
    subprocess.check_call(['pip', 'install', 'tree_sitter_languages'])
    import tree_sitter_languages
    print("tree_sitter_languages installed successfully")